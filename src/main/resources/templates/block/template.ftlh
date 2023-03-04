<#macro template>
  <!DOCTYPE html>
  <html lang="ru">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notices - Ваши заметки под рукой!</title>
    <link rel="stylesheet" href="/static/css/bootstrap.min.css">
    <link rel="stylesheet" href="/static/css/main.css">
  </head>
  <body>
  <header class="py-3 mb-4 border-bottom">
    <div class="container d-flex flex-wrap justify-content-center">
      <a href="/" class="d-flex align-items-center mb-3 mb-lg-0 me-lg-auto text-dark text-decoration-none">
        <span class="fs-3 fw-bold text-primary">NOTICES</span>
      </a>
      <button class="col-12 col-lg-auto mb-3 mb-lg-0 btn btn-primary" role="button" data-bs-toggle="modal" data-bs-target="#staticBackdrop">Создать заметку</button>
    </div>
  </header>
  <div class="container">
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h1 class="modal-title fs-5" id="staticBackdropLabel">Создать новую заметку:</h1>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Закрыть"></button>
          </div>
          <form action="/create" method="post">
            <div class="modal-body">
              <div class="mb-3">
                <label for="noteTitle" class="form-label">Заголовок</label>
                <input type="text" name="title" class="form-control" id="noteTitle">
              </div>
              <div class="mb-3">
                <label for="noteText" class="form-label">Текст</label>
                <textarea class="form-control" name="text" id="noteText" rows="5"></textarea>
              </div>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Закрыть</button>
              <button type="submit" class="btn btn-primary">Создать заметку</button>
            </div>
          </form>
        </div>
      </div>
    </div>
      <#nested/>
  </div>
  <script type="text/javascript" src="/static/js/bootstrap.bundle.min.js"></script>
  </body>
  </html>
</#macro>