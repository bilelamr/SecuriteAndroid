.class public Lcom/pushwoosh/amazon/AmazonInitProvider;
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
    .locals 2

    new-instance v0, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider$Builder;

    invoke-direct {v0}, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider$Builder;-><init>()V

    invoke-static {}, Lcom/pushwoosh/amazon/a/b/b;->a()Lcom/pushwoosh/internal/specific/DeviceSpecific;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider$Builder;->setDeviceSpecific(Lcom/pushwoosh/internal/specific/DeviceSpecific;)Lcom/pushwoosh/internal/specific/DeviceSpecificProvider$Builder;

    move-result-object v0

    invoke-static {}, Lcom/pushwoosh/amazon/a/a;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/pushwoosh/internal/specific/DeviceSpecificProvider$Builder;->build(Z)Lcom/pushwoosh/internal/specific/DeviceSpecificProvider;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
