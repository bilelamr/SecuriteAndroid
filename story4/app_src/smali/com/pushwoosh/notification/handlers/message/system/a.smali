.class Lcom/pushwoosh/notification/handlers/message/system/a;
.super Lcom/pushwoosh/notification/handlers/message/system/c;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/pushwoosh/notification/handlers/message/system/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "getAttributes"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/pushwoosh/notification/b;->z(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge p1, v2, :cond_0

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    nop

    :cond_0
    new-instance p1, Lcom/pushwoosh/repository/aa;

    invoke-direct {p1, p2}, Lcom/pushwoosh/repository/aa;-><init>(Ljava/util/List;)V

    invoke-static {}, Lcom/pushwoosh/internal/network/NetworkModule;->getRequestManager()Lcom/pushwoosh/internal/network/RequestManager;

    move-result-object p2

    if-nez p2, :cond_1

    return v0

    :cond_1
    invoke-interface {p2, p1}, Lcom/pushwoosh/internal/network/RequestManager;->sendRequest(Lcom/pushwoosh/internal/network/PushRequest;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v0
.end method
