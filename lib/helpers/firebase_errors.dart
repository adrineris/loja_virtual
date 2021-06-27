String getErrorString(String code) {
  switch (code) {
    case 'wrong-password':
      return 'Sua senha está incorreta.';
    case 'user-not-found':
      return 'Não há usuário com este e-mail.';
    case 'user-disabled':
      return 'Este usuário foi desabilitado.';
    default:
      return 'Um erro indefinido ocorreu.';
  }
}
