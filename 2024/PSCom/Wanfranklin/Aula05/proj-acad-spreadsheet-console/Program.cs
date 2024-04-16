try
{

    Console.WriteLine("Digite o CEP: ");

    string cep = Console.ReadLine();

    string url = $"https://viacep.com.br/ws/{cep}/json/";

    HttpClient client = new();
    HttpResponseMessage response = await client.GetAsync(url);

    if (response.IsSuccessStatusCode)
    {
        string body = await response.Content.ReadAsStringAsync();
        Console.WriteLine(body);
    }

}

catch ( Exception ex )
{

    Console.WriteLine($"Erro ao consultar CEP. Detalhe: {ex.Message}");

}
