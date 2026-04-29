.class public Lcom/pushwoosh/reactnativeplugin/internal/ReactNativePluginProvider;
.super Ljava/lang/Object;
.source "ReactNativePluginProvider.java"

# interfaces
.implements Lcom/pushwoosh/internal/PluginProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPluginType()Ljava/lang/String;
    .locals 1

    const-string v0, "React Native"

    return-object v0
.end method

.method public richMediaStartDelay()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method
