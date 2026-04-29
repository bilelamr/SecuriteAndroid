.class Lcom/pushwoosh/internal/network/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/network/RequestManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/internal/network/e$b;,
        Lcom/pushwoosh/internal/network/e$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/pushwoosh/repository/RegistrationPrefs;

.field private b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pushwoosh/repository/RegistrationPrefs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/internal/network/e;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {p1}, Lcom/pushwoosh/repository/RegistrationPrefs;->baseUrl()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->get()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/internal/network/e;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/pushwoosh/internal/network/PushRequest;Ljava/lang/String;)Lcom/pushwoosh/function/Result;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Response:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/pushwoosh/internal/network/PushRequest<",
            "TResponse;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/pushwoosh/function/Result<",
            "TResponse;",
            "Lcom/pushwoosh/internal/network/NetworkException;",
            ">;"
        }
    .end annotation

    const-string v0, "base_url"

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/pushwoosh/internal/network/e;->b:Ljava/lang/String;

    :cond_0
    invoke-direct {p0, p1}, Lcom/pushwoosh/internal/network/e;->a(Lcom/pushwoosh/internal/network/PushRequest;)Z

    move-result v1

    const-string v2, "RequestManager"

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Try To send: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/pushwoosh/internal/network/PushRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; baseUrl: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/pushwoosh/internal/network/PushRequest;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1}, Lcom/pushwoosh/internal/network/PushRequest;->getMethod()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1}, Lcom/pushwoosh/internal/network/e;->a(Lcom/pushwoosh/internal/network/PushRequest;)Z

    move-result v4

    invoke-direct {p0, p2, v1, v3, v4}, Lcom/pushwoosh/internal/network/e;->a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/pushwoosh/internal/network/e$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/pushwoosh/internal/network/e$a;->a()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v4, v3, :cond_5

    invoke-virtual {v1}, Lcom/pushwoosh/internal/network/e$a;->b()I

    move-result v3

    if-ne v4, v3, :cond_5

    invoke-direct {p0, p1}, Lcom/pushwoosh/internal/network/e;->a(Lcom/pushwoosh/internal/network/PushRequest;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/pushwoosh/internal/network/PushRequest;->getMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " response success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Lcom/pushwoosh/internal/network/e$a;->c()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/pushwoosh/internal/network/e;->b:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/pushwoosh/internal/network/e;->a(Ljava/lang/String;)V

    :cond_3
    const-string p2, "response"

    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    if-nez p2, :cond_4

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_4
    invoke-virtual {p1, p2}, Lcom/pushwoosh/internal/network/PushRequest;->parseResponse(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/pushwoosh/function/Result;->fromData(Ljava/lang/Object;)Lcom/pushwoosh/function/Result;

    move-result-object p1

    return-object p1

    :cond_5
    new-instance p2, Lcom/pushwoosh/internal/network/NetworkException;

    invoke-virtual {v1}, Lcom/pushwoosh/internal/network/e$a;->c()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/pushwoosh/internal/network/NetworkException;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance v0, Lcom/pushwoosh/internal/network/b;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/pushwoosh/internal/network/b;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    :goto_0
    invoke-direct {p0, p1}, Lcom/pushwoosh/internal/network/e;->a(Lcom/pushwoosh/internal/network/PushRequest;)Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ERROR: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, p2}, Lcom/pushwoosh/internal/utils/PWLog;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    invoke-static {p2}, Lcom/pushwoosh/function/Result;->fromException(Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/pushwoosh/internal/network/e;Lcom/pushwoosh/internal/network/PushRequest;Ljava/lang/String;)Lcom/pushwoosh/function/Result;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pushwoosh/internal/network/e;->a(Lcom/pushwoosh/internal/network/PushRequest;Ljava/lang/String;)Lcom/pushwoosh/function/Result;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/pushwoosh/internal/network/e$a;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/net/URL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v0, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p3

    check-cast p3, Ljava/net/HttpURLConnection;

    const-string v1, "POST"

    invoke-virtual {p3, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Content-Type"

    const-string v2, "application/json; charset=utf-8"

    invoke-virtual {p3, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "request"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "Content-Length"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-virtual {p3, p2}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v4, 0x400

    :try_start_4
    new-array v4, v4, [B

    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-ltz v5, :cond_0

    invoke-virtual {v3, v4, p2, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {p2, v4}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    if-nez p4, :cond_1

    const-string p4, "RequestManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\nx\n|     Pushwoosh request:\n| Url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n| Payload: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n| Response: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nx"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/pushwoosh/internal/utils/PWLog;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p2, Lcom/pushwoosh/internal/network/e$a;

    invoke-virtual {p3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p3

    const-string v0, "status_code"

    invoke-virtual {p4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p2, p3, v0, p4}, Lcom/pushwoosh/internal/network/e$a;-><init>(IILorg/json/JSONObject;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-object p2

    :catchall_0
    move-exception p2

    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw p2

    :catchall_2
    move-exception p2

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    throw p2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p2

    iget-object p3, p0, Lcom/pushwoosh/internal/network/e;->b:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/pushwoosh/internal/network/e;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {p1}, Lcom/pushwoosh/repository/RegistrationPrefs;->getDefaultBaseUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/internal/network/e;->b:Ljava/lang/String;

    :cond_2
    goto :goto_2

    :goto_1
    throw p2

    :goto_2
    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/pushwoosh/internal/network/e;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/pushwoosh/internal/network/e;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->baseUrl()Lcom/pushwoosh/internal/preference/PreferenceStringValue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pushwoosh/internal/preference/PreferenceStringValue;->set(Ljava/lang/String;)V

    return-void
.end method

.method private a()Z
    .locals 3

    iget-object v0, p0, Lcom/pushwoosh/internal/network/e;->a:Lcom/pushwoosh/repository/RegistrationPrefs;

    invoke-virtual {v0}, Lcom/pushwoosh/repository/RegistrationPrefs;->removeAllDeviceData()Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/internal/preference/PreferenceBooleanValue;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "RequestManager"

    const-string v2, "remove all data device is true, it is block request to server"

    invoke-static {v1, v2}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v0
.end method

.method private a(Lcom/pushwoosh/internal/network/PushRequest;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Response:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/pushwoosh/internal/network/PushRequest<",
            "TResponse;>;)Z"
        }
    .end annotation

    instance-of p1, p1, Lcom/pushwoosh/internal/network/g;

    return p1
.end method


# virtual methods
.method public sendRequest(Lcom/pushwoosh/internal/network/PushRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Response:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/pushwoosh/internal/network/PushRequest<",
            "TResponse;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/pushwoosh/internal/network/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/pushwoosh/internal/network/e;->sendRequest(Lcom/pushwoosh/internal/network/PushRequest;Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public sendRequest(Lcom/pushwoosh/internal/network/PushRequest;Lcom/pushwoosh/function/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Response:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/pushwoosh/internal/network/PushRequest<",
            "TResponse;>;",
            "Lcom/pushwoosh/function/Callback<",
            "TResponse;",
            "Lcom/pushwoosh/internal/network/NetworkException;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/internal/network/e;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/pushwoosh/internal/network/e;->sendRequest(Lcom/pushwoosh/internal/network/PushRequest;Ljava/lang/String;Lcom/pushwoosh/function/Callback;)V

    return-void
.end method

.method public sendRequest(Lcom/pushwoosh/internal/network/PushRequest;Ljava/lang/String;Lcom/pushwoosh/function/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Response:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/pushwoosh/internal/network/PushRequest<",
            "TResponse;>;",
            "Ljava/lang/String;",
            "Lcom/pushwoosh/function/Callback<",
            "TResponse;",
            "Lcom/pushwoosh/internal/network/NetworkException;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/pushwoosh/internal/network/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    new-instance p1, Lcom/pushwoosh/internal/network/NetworkException;

    const-string p2, "Device data was removed from Pushwoosh and all interactions were stopped"

    invoke-direct {p1, p2}, Lcom/pushwoosh/internal/network/NetworkException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/pushwoosh/function/Result;->fromException(Lcom/pushwoosh/exception/PushwooshException;)Lcom/pushwoosh/function/Result;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/pushwoosh/function/Callback;->process(Lcom/pushwoosh/function/Result;)V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Lcom/pushwoosh/internal/network/e$b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/pushwoosh/internal/network/e$b;-><init>(Lcom/pushwoosh/internal/network/e;Lcom/pushwoosh/internal/network/PushRequest;Ljava/lang/String;Lcom/pushwoosh/function/Callback;)V

    sget-object p1, Landroid/os/AsyncTask;->SERIAL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {v0, p1, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public sendRequestSync(Lcom/pushwoosh/internal/network/PushRequest;)Lcom/pushwoosh/function/Result;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Response:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/pushwoosh/internal/network/PushRequest<",
            "TResponse;>;)",
            "Lcom/pushwoosh/function/Result<",
            "TResponse;",
            "Lcom/pushwoosh/internal/network/NetworkException;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/pushwoosh/internal/network/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/pushwoosh/function/Result;->fromData(Ljava/lang/Object;)Lcom/pushwoosh/function/Result;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/internal/network/e;->b:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/pushwoosh/internal/network/e;->a(Lcom/pushwoosh/internal/network/PushRequest;Ljava/lang/String;)Lcom/pushwoosh/function/Result;

    move-result-object p1

    return-object p1
.end method

.method public updateBaseUrl(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/pushwoosh/internal/network/e;->a(Ljava/lang/String;)V

    return-void
.end method
