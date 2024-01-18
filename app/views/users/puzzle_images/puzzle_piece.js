function createPuzzle(imageUrl){
  const puzzleContainer = document.getElementById('puzzle-container');
  puzzleContainer.innerHTML = '';
  
  const pieces = [];
  const gridSize = 3;
  
  for (let row = 0; row < gridSize; row++){
    for (let col = 0; col < gridSize; col++){
      const piece = document.createElement('div');
      piece.className = 'puzzle-piece';
      piece.style.backgroundImage = 'url(${imageUrl})';
      piece.style.backgroundPosition = '-${col * (100 / (gridSize - 1))}% -${row * (100 / (gridSize - 1))}%';
      piece.addEventListener('click',() => handlePieceCilck(piece,pieces,gridSize));
      pieces.push(piece);
      puzzleContainer.appendChild(piece);
    }
  }
}
function handlePieceClick(clickedPiece, pieces, gridSize) {
  const clickedIndex = pieces.indexOf(clickedPiece);
  const emptyIndex = pieces.findIndex(piece => piece.classList.contains('empty'));

  if (isAdjacent(clickedIndex, emptyIndex, gridSize)) {
    // ピースを入れ替える
    pieces[emptyIndex].style.backgroundPosition = clickedPiece.style.backgroundPosition;
    pieces[emptyIndex].classList.remove('empty');
    clickedPiece.style.backgroundPosition = '0% 0%';
    clickedPiece.classList.add('empty');
  }

  // パズルが完成したかどうかの判定
  if (pieces.every(piece => piece.classList.contains('empty'))) {
    alert('パズルが完成しました！');
  }
}

// 二つのピースが隣接しているかどうかを判定する関数
function isAdjacent(index1, index2, gridSize) {
  const row1 = Math.floor(index1 / gridSize);
  const col1 = index1 % gridSize;
  const row2 = Math.floor(index2 / gridSize);
  const col2 = index2 % gridSize;

  const rowDiff = Math.abs(row1 - row2);
  const colDiff = Math.abs(col1 - col2);

  return (rowDiff === 1 && colDiff === 0) || (rowDiff === 0 && colDiff === 1);
}