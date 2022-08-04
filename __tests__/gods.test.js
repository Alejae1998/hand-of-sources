const pool = require('../lib/utils/pool');
const setup = require('../data/setup');
const request = require('supertest');
const app = require('../lib/app');

describe('god routes', () => {
  beforeEach(() => {
    return setup(pool);
  });
  it('get /gods should display a list of movies', async () => {
    const resp = await request(app).get('/gods');
    expect(resp.status).toEqual(200);
    expect(resp.body).toEqual([
      {
        drink: 'Iced American (no sugar)',
        id: '1',
        known: 'Lord of Justice',
        name: 'Zeus',
      },
      {
        drink: 'Espresso shot',
        id: '2',
        known: 'Known as Neptune',
        name: 'Poseidon',
      },
      {
        drink: 'Hot Oatmilk Latte',
        id: '3',
        known: 'Goddess of wisdom, war and the crafts',
        name: 'Athena',
      },
      { drink: 'Iced Mocha', id: '4', known: 'Most Loved God', name: 'Apollo' },
    ]);
  });

  afterAll(() => {
    pool.end();
  });
});
