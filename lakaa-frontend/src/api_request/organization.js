import api from './api'
const prefix = 'organizations'

async function getAllOrgs() {
    const resp = await api.get(`/${prefix}`)
    console.log('yep')
    return resp.data
}

async function getOrg(id) {
    const resp = await api.get(`/${prefix}/${id}`)
    return resp.data
}

async function addOrg(org) {
    const res = await api.post(`/${prefix}?name=${org.name}&site_url=${org.site_url}&logo_url=${org.logo_url}`)
}

async function modifyOrg(organization) {
    const res = await api.put(`/${prefix}`, organization)
}

async function removeOrg(id) {
    const res = await api.delete(`/${prefix}/${id}`)
    return res.data
}
export  {getAllOrgs, getOrg, addOrg, modifyOrg, removeOrg}