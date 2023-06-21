import api from './api'
const prefix = 'organizations'

async function getAll() {
    const resp = await api.get(`/${prefix}`)
    console.log('yep')
    return resp.data
}

async function get(id) {
    const resp = await api.get(`/${prefix}/${id}`)
    return resp.data
}

export  {getAll , get}