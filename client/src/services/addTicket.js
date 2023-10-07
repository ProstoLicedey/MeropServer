import reciveCodeService from "./userService/updatePass";
import axios from "axios";
import {refresh} from "../http/userAPI";
import {useContext} from "react";
import {Context} from "../index";

const addTicket = async (entranceОptionPriceId, event, hall) => {

    try {
        hall.setTicket([...hall.ticket, {eventId: event.event.id, entranceОptionPriceId: entranceОptionPriceId}])
        return true
    } catch (e) {
        console.log(e);
    }
}
export default addTicket;