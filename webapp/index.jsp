<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<!DOCTYPE html>
<html>

<head>
    <title>Listagem</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body>
    <%
	String user = "postgres";
    String senha = "postgres";
	Class.forName("org.postgresql.Driver");
	Connection con = DriverManager.getConnection("jdbc:postgresql://postgres-compose:5432/trabalho2", user, senha);
	
	String sqlGeneros = "SELECT * FROM public.genero";
	String sqlFilmes = "SELECT * FROM public.filmes";
	String sqlOscaresMelhorFilme = "SELECT * FROM public.oscares_melhor_filme";
	String sqlAtores = "SELECT * FROM public.atores";
	String sqlElenco = "SELECT * FROM public.elenco";
	String sqlServicos = "SELECT * FROM public.servicos";
	String sqlUsuarios = "SELECT * FROM public.usuarios";
	String sqlServicosAutorizados = "SELECT * FROM public.servicos_autorizados";
	String sqlServicosUsados = "SELECT * FROM public.servicos_usados";
	String sqlFilmesAssistidos = "SELECT * FROM public.filmes_assistidos";
    String sqlClassificacoes = "SELECT * FROM public.classificacoes";
    %>
    <%
        try {
            PreparedStatement stm = con.prepareStatement(sqlGeneros);
            ResultSet rs = stm.executeQuery();
    %>
    <h2>Generos</h2>

    <table>
        <tr>
            <th>ID</th>
            <th>Nome</th>
        </tr>
        <%
            while (rs.next()) {
            %>
        <tr>
            <td><%out.print(rs.getInt("cd_genero"));%></td>
            <td><%out.print(rs.getString("ds_nome"));%></td>
        </tr>
        <%
            }
            rs.close();
        } catch (SQLException ex) {

        }
    %>
    </table>
    <%
        try {
            PreparedStatement stm = con.prepareStatement(sqlFilmes);
            ResultSet rs = stm.executeQuery();
    %>

    <h2>Filmes</h2>

    <table>
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Duracao Min</th>
            <th>Genero</th>
        </tr>
        <%
            while (rs.next()) {
            %>
        <tr>
            <td><%out.print(rs.getInt("cd_filme"));%></td>
            <td><%out.print(rs.getString("ds_nome"));%></td>
            <td><%out.print(rs.getString("nr_duracaomin"));%></td>
            <td><%out.print(rs.getString("cd_genero"));%></td>
        </tr>
        <%
            }
            rs.close();
        } catch (SQLException ex) {

        }
    %>
    </table>
    <%
        try {
            PreparedStatement stm = con.prepareStatement(sqlOscaresMelhorFilme);
            ResultSet rs = stm.executeQuery();
    %>

    <h2>Oscares Melhor Filme</h2>

    <table>
        <tr>
            <th>ID</th>
            <th>Nr ano</th>
        </tr>
        <%
            while (rs.next()) {
            %>
        <tr>
            <td><%out.print(rs.getInt("cd_filme"));%></td>
            <td><%out.print(rs.getString("nr_ano"));%></td>
        </tr>
        <%
            }
            rs.close();
        } catch (SQLException ex) {

        }
    %>
    </table>
    <%
        try {
            PreparedStatement stm = con.prepareStatement(sqlAtores);
            ResultSet rs = stm.executeQuery();
    %>

    <h2>Atores</h2>

    <table>
        <tr>
            <th>ID</th>
            <th>Nr ano</th>
        </tr>
        <%
            while (rs.next()) {
            %>
        <tr>
            <td><%out.print(rs.getInt("cd_ator"));%></td>
            <td><%out.print(rs.getString("ds_nome"));%></td>
        </tr>
        <%
            }
            rs.close();
        } catch (SQLException ex) {

        }
    %>
    </table>
    <%
        try {
            PreparedStatement stm = con.prepareStatement(sqlElenco);
            ResultSet rs = stm.executeQuery();
    %>

    <h2>Elenco</h2>

    <table>
        <tr>
            <th>ID</th>
            <th>ID Filme</th>
            <th>ID Ator Principal</th>
        </tr>
        <%
            while (rs.next()) {
            %>
        <tr>
            <td><%out.print(rs.getInt("cd_ator"));%></td>
            <td><%out.print(rs.getString("cd_filme"));%></td>
            <td><%out.print(rs.getString("sn_principal"));%></td>
        </tr>
        <%
            }
            rs.close();
        } catch (SQLException ex) {

        }
    %>
    </table>
    <%
        try {
            PreparedStatement stm = con.prepareStatement(sqlServicos);
            ResultSet rs = stm.executeQuery();
    %>

    <h2>Servicos</h2>

    <table>
        <tr>
            <th>ID</th>
            <th>Nome</th>
        </tr>
        <%
            while (rs.next()) {
            %>
        <tr>
            <td><%out.print(rs.getInt("cd_servico"));%></td>
            <td><%out.print(rs.getString("ds_nome"));%></td>
        </tr>
        <%
            }
            rs.close();
        } catch (SQLException ex) {

        }
    %>
    </table>
    <%
        try {
            PreparedStatement stm = con.prepareStatement(sqlUsuarios);
            ResultSet rs = stm.executeQuery();
    %>

    <h2>Usuarios</h2>

    <table>
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Senha</th>
        </tr>
        <%
            while (rs.next()) {
            %>
        <tr>
            <td><%out.print(rs.getInt("cd_usuario"));%></td>
            <td><%out.print(rs.getString("ds_nome"));%></td>
            <td><%out.print(rs.getString("ds_senha"));%></td>
        </tr>
        <%
            }
            rs.close();
        } catch (SQLException ex) {

        }
    %>
    </table>
    <%
        try {
            PreparedStatement stm = con.prepareStatement(sqlServicosAutorizados);
            ResultSet rs = stm.executeQuery();
    %>

    <h2>Servicos Autorizados</h2>

    <table>
        <tr>
            <th>ID</th>
            <th>ID Servico</th>
            <th>SN Autorizado</th>
        </tr>
        <%
            while (rs.next()) {
            %>
        <tr>
            <td><%out.print(rs.getInt("cd_usuario"));%></td>
            <td><%out.print(rs.getString("cd_servico"));%></td>
            <td><%out.print(rs.getString("sn_autorizado"));%></td>
        </tr>
        <%
            }
            rs.close();
        } catch (SQLException ex) {

        }
    %>
    </table>
    <%
        try {
            PreparedStatement stm = con.prepareStatement(sqlServicosUsados);
            ResultSet rs = stm.executeQuery();
    %>

    <h2>Servicos Usados</h2>

    <table>
        <tr>
            <th>ID Usuario</th>
            <th>ID Servico</th>
            <th>Momento</th>
        </tr>
        <%
            while (rs.next()) {
            %>
        <tr>
            <td><%out.print(rs.getInt("cd_usuario"));%></td>
            <td><%out.print(rs.getString("cd_servico"));%></td>
            <td><%out.print(rs.getString("dt_momento"));%></td>
        </tr>
        <%
            }
            rs.close();
        } catch (SQLException ex) {

        }
    %>
    </table>
    <%
        try {
            PreparedStatement stm = con.prepareStatement(sqlFilmesAssistidos);
            ResultSet rs = stm.executeQuery();
    %>

    <h2>Filmes Assistidos</h2>

    <table>
        <tr>
            <th>ID Usuario</th>
            <th>ID Filme</th>
            <th>Momento</th>
        </tr>
        <%
            while (rs.next()) {
            %>
        <tr>
            <td><%out.print(rs.getInt("cd_usuario"));%></td>
            <td><%out.print(rs.getString("cd_filme"));%></td>
            <td><%out.print(rs.getString("dt_momento"));%></td>
        </tr>
        <%
            }
            rs.close();
        } catch (SQLException ex) {

        }
    %>
    </table>
    <%
        try {
            PreparedStatement stm = con.prepareStatement(sqlClassificacoes);
            ResultSet rs = stm.executeQuery();
    %>

    <h2>Classificacoes</h2>

    <table>
        <tr>
            <th>ID Filme</th>
            <th>ID Usuario</th>
            <th>Gostou?</th>
            <th>Momento</th>
        </tr>
        <%
            while (rs.next()) {
            %>
        <tr>
            <td><%out.print(rs.getInt("cd_filme"));%></td>
            <td><%out.print(rs.getString("cd_usuario"));%></td>
            <td><%out.print(rs.getString("sn_gostou"));%></td>
            <td><%out.print(rs.getString("dt_momento"));%></td>
        </tr>
        <%
            }
            rs.close();
        } catch (SQLException ex) {

        }
    %>
    </table>
</body>

</html>