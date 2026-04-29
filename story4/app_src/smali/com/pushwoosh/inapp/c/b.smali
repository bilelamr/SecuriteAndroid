.class public Lcom/pushwoosh/inapp/c/b;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/pushwoosh/inapp/f/c;

.field private final b:Lcom/pushwoosh/inapp/a;


# direct methods
.method public constructor <init>(Lcom/pushwoosh/inapp/f/c;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/c/b;->a:Lcom/pushwoosh/inapp/f/c;

    new-instance v0, Lcom/pushwoosh/inapp/a;

    invoke-direct {v0, p1}, Lcom/pushwoosh/inapp/a;-><init>(Lcom/pushwoosh/inapp/f/c;)V

    iput-object v0, p0, Lcom/pushwoosh/inapp/c/b;->b:Lcom/pushwoosh/inapp/a;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/inapp/c/b;->a:Lcom/pushwoosh/inapp/f/c;

    invoke-interface {v0, p1}, Lcom/pushwoosh/inapp/f/c;->c(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/pushwoosh/internal/utils/e;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v1, "\\{\\{(.+?)\\|(.+?)\\|(.*?)\\}\\}"

    const/16 v2, 0x20

    invoke-static {v1, v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v2, p0, Lcom/pushwoosh/inapp/c/b;->b:Lcom/pushwoosh/inapp/a;

    invoke-virtual {v2, p1}, Lcom/pushwoosh/inapp/a;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/pushwoosh/inapp/c/b;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    const-string p1, "\\{(.+?)\\|(.+?)\\|(.*?)\\}"

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-direct {p0, v0, p1, p2}, Lcom/pushwoosh/inapp/c/b;->a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to process html: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "[InApp]ResourceMapper"

    invoke-static {p2, p1}, Lcom/pushwoosh/internal/utils/PWLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private a(Ljava/lang/String;Ljava/util/regex/Pattern;Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    :goto_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    const/4 v1, 0x3

    const-string v2, "[InApp]ResourceMapper"

    if-eq v0, v1, :cond_0

    const-string v0, "Incorrect matching count"

    invoke-static {v2, v0}, Lcom/pushwoosh/internal/utils/PWLog;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Key: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\", Type: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\", Default Value: \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/pushwoosh/internal/utils/PWLog;->noise(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/pushwoosh/inapp/c/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Replacing \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" with \""

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/pushwoosh/internal/utils/PWLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    return-object p1
.end method


# virtual methods
.method public a(Lcom/pushwoosh/inapp/e/b/b;)Lcom/pushwoosh/inapp/d/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/inapp/c/b;->a:Lcom/pushwoosh/inapp/f/c;

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/pushwoosh/inapp/f/c;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/b/b;->h()Ljava/util/Map;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/pushwoosh/inapp/c/b;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/pushwoosh/inapp/d/a;

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/b/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v0, v1}, Lcom/pushwoosh/inapp/d/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
