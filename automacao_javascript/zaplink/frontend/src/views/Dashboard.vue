<template>
  <div class="Dashboard">
    <div class="container">
      <h4 class="title is-4">Seu Gerenciador Digital de Contatos</h4>

      <button
        class="button is-success is-medium"
        @click="showContactAddModal = true"
      >
        +
      </button>

      <div class="columns is-multiline">
        <div
          class="column is-4"
          v-for="contact in contactList"
          :key="contact.id"
        >
          <div class="card">
            <div class="card-content">
              <div class="media">
                <div class="media-left">
                  <figure class="image is-48x48">
                    <img src="../assets/whatsapp.svg" alt="Logo whatsapp" />
                  </figure>
                </div>
                <div class="media-content">
                  <p class="title is-4">{{ contact.name }}</p>
                  <p class="subtitle is-6">{{ contact.number }}</p>
                </div>
              </div>
              <div class="content">
                {{ contact.description }}
              </div>
            </div>
            <footer class="card-footer">
              <a href="#" class="card-footer-item">Conversar</a>
              <a href="#" class="card-footer-item">Apagar</a>
            </footer>
          </div>
        </div>
      </div>

      <b-modal
        v-model="showContactAddModal"
        has-modal-card
        trap-focus
        :destroy-on-hide="false"
        aria-role="dialog"
        aria-modal
      >
        <form action="">
          <div class="modal-card" style="width: 450px">
            <header class="modal-card-head">
              <p class="modal-card-title">Novo Contato</p>
              <button
                type="button"
                class="delete"
                @click="showContactAddModal = false"
              />
            </header>
            <section class="modal-card-body">
              <div class="field">
                <input class="input is-primary" placeholder="Nome Completo" />
              </div>
              <div class="field">
                <input class="input is-primary" placeholder="WhatsApp" />
              </div>
              <div class="field">
                <textarea
                  class="textarea is-primary"
                  placeholder="Assunto"
                ></textarea>
              </div>
            </section>
            <footer class="modal-card-foot">
              <button class="button is-success">Cadastrar</button>
            </footer>
          </div>
        </form>
      </b-modal>
    </div>
  </div>
</template>

<script>
export default {
  name: "Dashboard",
  data() {
    return {
      contactList: [],
      showContactAddModal: false,
    };
  },
  methods: {
    list() {
      window.axios.get("/contacts").then(async (res) => {
        this.contactList = await res.data;
      });
    },
  },

  mounted() {
    this.list();
  },
};
</script>
