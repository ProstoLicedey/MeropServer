import React, {useContext, useEffect, useState} from 'react';
import {
    Button, Card,
    Cascader, Col, ConfigProvider,
    DatePicker, Divider, Empty, Flex,
    Form,
    Input,
    InputNumber,
    Mentions, message, Row, Segmented,
    Select, Space, Switch, Tooltip,
    TreeSelect, Typography, Upload,
} from 'antd';
import Title from "antd/es/typography/Title";
import {useParams} from "react-router-dom";
import {observer} from "mobx-react-lite";
import TextArea from "antd/es/input/TextArea";
import {CheckOutlined, CloseOutlined, UploadOutlined} from "@ant-design/icons";
import ruRU from "antd/es/locale/ru_RU";
import {Context} from "../../index";
import {fetchTypes} from "../../http/eventAPI";
import Link from "antd/es/typography/Link";
import EventItem from "../../components/home/EventItem";
import CreateZal from "../../components/creator/ModalZal/createZal";
import CreateEntrance from "../../components/creator/ModalZal/createEntrance";
import ModalZal from "../../components/creator/ModalZal/ModalZal";
import {createEntrance, getEntranceUser, getOneEntrance} from "../../http/entranceAPI";
import {values} from "mobx";

const {Text} = Typography;


const {RangePicker} = DatePicker;
const formItemLayout = {
    labelCol: {
        xs: {
            span: 24,
        },
        sm: {
            span: 10,
        },
    },
    wrapperCol: {
        xs: {
            span: 24,
        },
        sm: {
            span: 14,
        },
    },
};


function Label(props: { children: ReactNode }) {
    return null;
}

const CreateEvent = () => {
    const {id} = useParams();
    const {event, creator, user} = useContext(Context)
    const [fileUploaded, setFileUploaded] = useState(false);
    const [modal, setModal] = useState(false);
    const [selectedValue, setSelectedValue] = useState(null);
    const [switchStates, setSwitchStates] = useState({});
    const [form] = Form.useForm();
    const [formEvent] = Form.useForm();

    const titleText = id == undefined ? "Создание мероприятия" : "Редактирование мероприятия";


    useEffect(() => {
        fetchTypes().then(data => event.setTypes(data))
        getEntranceUser(user.user.id).then(data => creator.setEntranceAll(data))
    }, [modal]);


    const normFile = (e) => {
        if (Array.isArray(e)) {
            const fileList = e;
            setFileUploaded(fileList.length > 0); // Update state based on whether a file is present
            return fileList;
        }
        return e?.fileList.slice(-1); // Ensure only the last uploaded file is kept
    };
    const selectEntrance = (value) => {
        if (value == 'new') {
            setModal(true)
            setSelectedValue(null);
            return
        }
        setSelectedValue(value);
        getOneEntrance(value).then(data => creator.setEntrance(data))


    };

    const onFinish = (values) => {
        // Handle form submission if needed
        console.log('Form values:', form.validateFields());
    };

    const beforeUpload = async (file) => {
        const isImage = file.type.startsWith('image/');
        if (!isImage) {
            message.error('Можно загружать только изображения!');
            return Promise.reject();
        }
        if (Array.isArray(file)) {

            setFileUploaded(false); // Update state based on whether a file is present
        }
        setFileUploaded(true);
        return Promise.resolve();
    };
    const filterOption = (input, option) =>
        (option?.label ?? '').toLowerCase().includes(input.toLowerCase())

    return (
        <Row style={{
            margin: '2%',
            display: "flex",
            textAlign: 'center',
            alignItems: 'flex-start',
            justifyContent: 'center',
        }}>
            <Col xs={24} sm={12}>
                <Space direction="vertical" style={{width: '95%', margin: 5}}>
                    <Title level={2}>
                        {titleText}
                    </Title>
                    <Form
                        form={formEvent}
                        title={"Общая информация"}
                        {...formItemLayout}
                        style={{
                            maxWidth: 600,
                        }}
                    >
                        <Form.Item
                            label="Название"
                            name="Name"
                            rules={[
                                {
                                    required: true,
                                    message: 'Укажите как называется ваше мероприятие',
                                },
                            ]}
                        >
                            <Input/>
                        </Form.Item>

                        <Form.Item
                            label="Описание"
                            name="Discription"
                            rules={[
                                {
                                    required: true,
                                    message: 'Напишиите несколько слов о мерорприятие',
                                },
                            ]}
                        >
                            <TextArea
                                autoSize={{
                                    minRows: 2,
                                    maxRows: 6,
                                }}
                            />
                        </Form.Item>
                        <ConfigProvider locale={ruRU}>
                            <Form.Item
                                label="Дата и время"
                                name="DateTime"
                                rules={[
                                    {
                                        type: 'object',
                                        required: true,
                                        message: 'Укажите когда запанировано мероприятие',
                                    },
                                ]}

                            >

                                <DatePicker showTime format="YYYY-MM-DD HH:mm" style={{width: '100%'}}/>

                            </Form.Item>
                        </ConfigProvider>
                        <Form.Item
                            valuePropName="fileList"
                            getValueFromEvent={normFile}
                            label="Изображение"
                            name="Image"
                            rules={[
                                {
                                    required: true,
                                    message: 'Загрузите картинку',
                                },
                            ]}
                        >
                            <Upload

                                listType="picture"

                                beforeUpload={beforeUpload}
                                onRemove={() => setFileUploaded(false)}
                            >
                                {!fileUploaded &&
                                    <Button style={{width: '100%'}} icon={<UploadOutlined/>}>Загрузить</Button>}
                            </Upload>
                        </Form.Item>

                        <Form.Item
                            label="Тип меропрития"
                            name="Type"

                            rules={[
                                {
                                    required: true,
                                    message: 'Выберите тип вашего мероприятия',
                                },
                            ]}
                        >
                            <Select options={event.types}/>
                        </Form.Item>

                        <Form.Item
                            label="Возрастное ограничение"
                            name="AgeReating"

                            rules={[
                                {
                                    required: true,
                                    message: 'Укажите возрастное органичение мероприятия',
                                },
                            ]}
                        >
                            <Select options={event.types}/>
                        </Form.Item>

                        <Form.Item
                            wrapperCol={{
                                offset: 6,
                                span: 16,
                            }}
                        >
                            <Button type="primary" htmlType="submit"
                                    onClick={() => {
                                        formEvent
                                            .validateFields()
                                            .then((values) => {
                                                    console.error(values);
                                                    createEntrance(values).then(response => {
                                                        if (response.id) {
                                                            form.resetFields();
                                                        } else {
                                                            console.error("Error server");
                                                        }
                                                    })
                                                }
                                            )
                                            .catch((error) => {
                                                console.error("Error during form validation:", error);
                                            });
                                    }
                                    }>
                                Далее
                            </Button>
                        </Form.Item>
                    </Form>
                </Space>
            </Col>
            <Col xs={24} sm={12}>
                <Space direction="vertical" style={{width: '95%', margin: 5}}>
                    <Title level={4}>
                        Схема продажи
                    </Title>
                    <Select
                        style={{width: '100%', maxWidth: 400}}
                        showSearch
                        onChange={(value) => selectEntrance(value)}  // Corrected line
                        placeholder="Выбрать схему продаж"
                        value={selectedValue}
                        optionFilterProp="children"
                        filterOption={filterOption}
                        options={[
                            {label: '+Добавить новую схему', value: 'new', style: {color: '#722ed1'}},
                            ...creator.entranceAll
                        ]}
                    />
                    {creator.entrance?.entranceOptions && (
                        <Form
                            form={form}
                            onFinish={onFinish}
                            initialValues={{
                                entrances: creator.entrance.entranceOptions?.map((entrance) => ({
                                    id: entrance.id,
                                    switchState: switchStates[entrance.id] === undefined ? true : switchStates[entrance.id],
                                })),
                            }}
                        >
                            <Card title={creator.entrance.address} style={{marginTop: 25}}>
                                <Form.List name="entrances">
                                    {(fields, {add, remove}) => (
                                        <>
                                            {fields.map(({key, name, fieldKey, ...restField}) => (
                                                <Card.Grid
                                                    hoverable={false}
                                                    key={key}
                                                    style={{
                                                        maxHeight: 70,
                                                        position: 'relative',
                                                        width: '100%',
                                                        backgroundColor: switchStates[name] === false ? '#f5f5f5' : 'white',
                                                        cursor: switchStates[name] === false ? 'not-allowed' : 'default',
                                                    }}
                                                >
                                                    <Tooltip title="Убрать категорию в этом мероприятие ">
                                                        <div style={{position: 'absolute', top: 0, right: 3}}>
                                                            <Switch
                                                                defaultChecked={true}
                                                                size="small"
                                                                {...restField}
                                                                checked={switchStates[name]}
                                                                onChange={(checked) => setSwitchStates((prevStates) => ({
                                                                    ...prevStates,
                                                                    [name]: checked
                                                                }))}
                                                            />
                                                        </div>
                                                    </Tooltip>

                                                    <Row>
                                                        <Col span={8}>
                                                            <Title level={4}
                                                                   style={{marginRight: '16px', textAlign: 'left'}}>
                                                                {creator.entrance.entranceOptions[name].name}
                                                            </Title>
                                                        </Col>
                                                        <Col span={7}>
                                                            <Text
                                                                type="secondary">Мест: {creator.entrance.entranceOptions[name].totalSeats}</Text>

                                                        </Col>
                                                        <Col span={8}>
                                                            <Form.Item
                                                                name={[name, 'price']}
                                                                fieldKey={[fieldKey, 'price']}
                                                            >
                                                                <Input
                                                                    addonAfter="₽"
                                                                    placeholder="Цена"
                                                                    style={{marginRight: 40, width: '150px'}}
                                                                    disabled={switchStates[name] === undefined ? false : !switchStates[name]}
                                                                />
                                                            </Form.Item>
                                                        </Col>
                                                    </Row>
                                                </Card.Grid>
                                            ))}
                                        </>
                                    )}
                                </Form.List>
                            </Card>
                            <Button type="primary" htmlType="submit"
                                    style={{width: 200, height: 40, fontSize: 18, backgroundColor: '#722ed1'}}
                                    onClick={() => {
                                        form
                                            .validateFields()
                                            .then((values) => {
                                                    onFinish()
                                                }
                                            )
                                            .catch((error) => {
                                                console.error("Error during form validation:", error);
                                            });
                                    }}
                            >
                                Создать
                            </Button>
                        </Form>)}

                </Space>
            </Col>
            <ModalZal open={modal}
                      onCancel={() => {
                          setModal(false);
                      }}/>
        </Row>
    );
}
export default observer(CreateEvent);