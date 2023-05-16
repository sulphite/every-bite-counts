![https://media.discordapp.net/attachments/859729768077066300/1107985758511431800/image.png?width=1188&height=106](https://media.discordapp.net/attachments/859729768077066300/1107985758511431800/image.png?width=1188&height=106)

# 🍩 About

Have you ever bought a donut you couldn’t finish? Do you despair at the sky-high costs of fancy donuts in London? Have you ever just wanted a single bite of a donut and no more?

Every Bite Counts is a digital marketplace app in which users can buy and sell portions of donuts, with location and flavour search.

![https://cdn.discordapp.com/attachments/859729768077066300/1105984580210663524/signal-2023-05-10-230704_002.gif](https://cdn.discordapp.com/attachments/859729768077066300/1105984580210663524/signal-2023-05-10-230704_002.gif)

# 🍩 Installation

To run locally, first check you have [yarn](https://classic.yarnpkg.com/en/docs/install#windows-stable) and [Rails](https://guides.rubyonrails.org/v5.0/getting_started.html) installed.

```bash
$ yarn -v
$ rails -v
```

Next, install dependencies from the gemfile and yarn.lock file:

```bash
$ bundle install
$ yarn install
```

Now set up the database, seeding it with dummy data from our seed file.

```bash
$ rails db:create db:migrate db:seed
```

Finally, you will need to create a `.env` file in the top level of the application and provide your own API keys for [mapbox](https://docs.mapbox.com/help/getting-started/access-tokens/) and [cloudinary](https://cloudinary.com/documentation/image_upload_api_reference).

```bash
// .env

CLOUDINARY_URL=(your key)
MAPBOX_API_KEY=(your key)
```

Now launch the app!

```bash
$ bin/dev
```

View at localhost:3000
