import api from './api'
const prefix = 'food_collects'

async function getAllFoodCollects() {
    const resp = await api.get(`/${prefix}`)
    console.log('yep')
    return resp.data
}

async function getFoodCollect(id) {
    const resp = await api.get(`/${prefix}/${id}`)
    return resp.data
}

async function addFoodCollect(foodCollect) {
    const res = await api.post(`/${prefix}?name=${foodCollect.name}&date=${foodCollect.date}&organization_id=${foodCollect.organization_id}`)
}

async function modifyFoodCollect(organization) {
    const res = await api.put(`/${prefix}`, organization)
}

async function removeFoodCollect(id) {
    const res = await api.delete(`/${prefix}/${id}`)
    return res.data
}
export  {getAllFoodCollects, getFoodCollect, addFoodCollect, modifyFoodCollect, removeFoodCollect}