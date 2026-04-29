.class public Lcom/pushwoosh/PushwooshSharedDataProvider;
.super Landroid/content/ContentProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    if-nez p2, :cond_0

    return-object p3

    :cond_0
    new-instance p2, Landroid/content/UriMatcher;

    const/4 p4, -0x1

    invoke-direct {p2, p4}, Landroid/content/UriMatcher;-><init>(I)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Lcom/pushwoosh/PushwooshSharedDataProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "hwid"

    const/4 v1, 0x1

    invoke-virtual {p2, p4, v0, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    if-ne p1, v1, :cond_3

    new-instance p1, Landroid/database/MatrixCursor;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz p5, :cond_2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/pushwoosh/internal/platform/utils/GeneralUtils;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p5, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p2

    const/4 p3, 0x0

    if-gez p2, :cond_1

    new-array p2, v1, [Ljava/lang/String;

    invoke-static {}, Lcom/pushwoosh/internal/platform/utils/a;->b()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p2, p3

    invoke-virtual {p1, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-array p2, v1, [Ljava/lang/String;

    invoke-static {}, Lcom/pushwoosh/internal/platform/utils/a;->c()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p2, p3

    invoke-virtual {p1, p2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-object p1

    :cond_3
    return-object p3
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
