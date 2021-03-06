
<!-- Header welcome & adds -->
<div class="row-fluid">
  <div class="span12 build-header center">

    <span class="white justify-left medium">
    Créez votre Multiboards,<br><br>
    Vous pouvez créer votre propre multiboards avec les sources RSS qui vous conviennent.<br>
    Tous les Boards créés sont publics.<br>
    Vous pourrez trouver des <a href="http://fluxrss.fr/" target="_blank">flux à agréger ici</a>.
    </span>

    <span class="form-flux">
      <p class="bold">Entrez un nom pour votre Board</p>
      <input type="text" id="board-name">
      <p class="bold">Entrez l'adresse du flux RSS à ajouter</p>
      <input type="text" id="board-url" data-uuid="{{ config_id }}" value="http://indexerror.net/feed/qa.rss">
      <button id="submit-flux" class="btn">Ajouter le flux RSS</button>
      <br>
      <button data-url="" id="custom-url" class="hide btn custom-url save-board bold"></button>
  </div>
</div>

<!-- main boards list -->
<div class="row-fluid">
  <div id="build">
    <ul id="sortable">
    %for i in ['1','2','3','4','5','6','7','8','9','10','11','12','13','14','15','16']:
      <li class="build-boards thumbnail board-container">
        <span class="colors-{{ i }}"></span>
        <div class="board-wrapper" id="{{ i }}">
          <p class="center bold slot-message">Emplacement {{ i }} <br><font size=1>(Glisser pour déplacer)</font></p>
        </div>
        <a class="clear-board-link btn hidden" href="#" >Retirer ce Board</a>
      </li>
    %end
    </ul>
  </div>
</div>

<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">

<script src="/static/js/color-thief.js"></script>

%rebase base settings=settings
