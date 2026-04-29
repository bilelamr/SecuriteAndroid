.class public Lcom/pushwoosh/internal/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/PluginProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPluginType()Ljava/lang/String;
    .locals 1

    const-string v0, "Native"

    return-object v0
.end method

.method public richMediaStartDelay()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method
