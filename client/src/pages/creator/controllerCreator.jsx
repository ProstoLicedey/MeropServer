import React, { useContext, useState } from 'react';
import { Alert, Button, Input, Space, Typography } from 'antd';
import { getTicket } from '../../http/ticketAPI';
import { Context } from '../../index';
import { observer } from 'mobx-react-lite';
import Carouselcontroller from "../../components/Controller/Carouselcontroller";
import CheckCardController from "../../components/Controller/CheckCardController";

const { Title } = Typography;

const ControllerCreator = () => {
    const [ticketNumber, setTicketNumber] = useState('');
    const [status, setStatus] = useState('');
    const [message, setMessage] = useState('');
    const { user, ticket } = useContext(Context);

    const postTicket = () => {
        if (ticketNumber.length !== 7) {
            setStatus('error');
            setMessage('Номер билета состоит из 7 чисел');
            return;
        }

        setStatus('');
        setMessage('');

        getTicket(ticketNumber, user.user.id).then((response) => {
            // Обертываем изменение observable в экшен
            ticket.setControllerTicket(response);
        }).finally(() => {
            if (ticket.controllerTicket === 403) {
                setMessage('Билет не найден, либо это билет не на ваше мероприятие');
            }
        });
    };

    return (
        <Space direction="vertical" size="small">
            <Space>
                <Title level={2}>Контроль билетов</Title>
            </Space>

            {!!message.length && <Alert message={message} type="error" />}

            <Space>
                <Input
                    status={status}
                    size="large"
                    placeholder="Номер билета"
                    maxLength={7}
                    type="number"
                    onChange={(e) => setTicketNumber(e.target.value)}
                />
                <Button type="primary" size="large" onClick={postTicket}>
                    Ввод
                </Button>
            </Space>

            {ticket.controllerTicket === null ? <Carouselcontroller /> : <CheckCardController style={{ marginLeft: 20 }} />}
        </Space>
    );
};

export default observer(ControllerCreator);