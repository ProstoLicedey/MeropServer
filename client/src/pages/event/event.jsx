import React, { useContext, useEffect, useState } from 'react';
import { fetchOneEvent } from '../../http/eventAPI';
import { useParams } from 'react-router-dom';
import { Context } from '../../index';
import { Button, Col, Collapse, Image, Row, Space, Tag, Typography } from 'antd';
import Logo from '../../assets/logo.png';
import { observer } from 'mobx-react-lite';
import Title from 'antd/es/typography/Title';
import ShareButton from '../../components/event/ShareButton';
import AddressLink from '../../components/event/AddressLink';
import Paragraph from 'antd/es/typography/Paragraph';

const { Text, Link } = Typography;
const { Panel } = Collapse;

const Event = () => {
    const { id } = useParams();
    const { event } = useContext(Context);
    const [expanded, setExpanded] = useState(false);
    const [rows, setRows] = useState(3);

    useEffect(() => {
        fetchOneEvent(id).then(data => event.setEvent(data));
    }, []);

    if (!event || !event.event) {
        return null; // Возвращаем null, если нет данных о событии или свойства event.event
    }

    const handleExpand = () => {
        setExpanded(prevExpanded => !prevExpanded);
        setRows(prevRows => (prevRows === 3 ? 0 : 3));
    };

    return (
        <div style={{ height: '100%', display: 'flex', flexDirection: 'column' }}>
            <Row style={{ margin: '5%' }}>
                <Col md={6}>
                    <Image
                        alt="photo"
                        src={process.env.REACT_APP_API_URL + event.event.img}
                        width={'20vw'}
                        height={'30vw'}
                        style={{
                            borderRadius: '5%',
                            padding: '5px',
                            objectFit: 'cover',
                        }}
                    />
                </Col>
                <Col md={18} style={{ width: '100%', display: 'flex', flexDirection: 'column' }}>
                    <Space direction="vertical" size={"middle"}>
                        <Row>
                            <Tag style={{ fontWeight: 'bold' }} bordered={false}>
                                {event.event.ageRating ? event.event.ageRating.age : null}
                                +
                            </Tag>
                            <Tag style={{ fontWeight: 'bold' }} bordered={false}>
                                {event.event.type ? event.event.type.name : null}
                            </Tag>
                        </Row>
                        <Title>{event.event.title}</Title>

                        <AddressLink
                            name={event.event.hall ? event.event.hall.name : event.event.entrance ? event.event.entrance.title : null}
                            adress={event.event.hall ? event.event.hall.adress : event.event.entrance ? event.event.entrance.adress : null}
                        />

                        <div s>
                        <Paragraph
                            ellipsis={{
                                rows,
                                symbol: expanded ? 'Свернуть' : 'Подробнее',
                            }}
                            title={event.event.description}
                            style={{ whiteSpace: 'pre-wrap' }}
                        >
                            {event.event.description}

                        </Paragraph>
                            <Button type="link" onClick={handleExpand} style={{ float: 'right',marginTop:'-1em' }}>
                            {expanded ? 'Свернуть' : 'Подробнее'}
                        </Button>

                        </div>
                        <Space style={{ float: 'right' }}>
                            <Button type="primary" style={{ backgroundColor: '#722ed1', width: '15em', height: '4em' }}>
                                {event.event.hall ? 'Выбрать место' : 'Хочу билет'}
                            </Button>
                            <ShareButton />
                        </Space>

                    </Space>
                </Col>
            </Row>
        </div>
    );
};

export default observer(Event);