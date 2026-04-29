.class Lcom/fpe/comptenickel/MainApplication$1;
.super Lcom/facebook/react/ReactNativeHost;
.source "MainApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fpe/comptenickel/MainApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/fpe/comptenickel/MainApplication;Landroid/app/Application;)V
    .locals 0

    .line 31
    invoke-direct {p0, p2}, Lcom/facebook/react/ReactNativeHost;-><init>(Landroid/app/Application;)V

    return-void
.end method


# virtual methods
.method protected getJSMainModuleName()Ljava/lang/String;
    .locals 1

    const-string v0, "index"

    return-object v0
.end method

.method protected getPackages()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/react/ReactPackage;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Lcom/facebook/react/PackageList;

    invoke-direct {v0, p0}, Lcom/facebook/react/PackageList;-><init>(Lcom/facebook/react/ReactNativeHost;)V

    invoke-virtual {v0}, Lcom/facebook/react/PackageList;->getPackages()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/facebook/react/ReactPackage;

    .line 42
    new-instance v2, Lcom/fpe/comptenickel/RNNotificationsPermissionsPackage;

    invoke-direct {v2}, Lcom/fpe/comptenickel/RNNotificationsPermissionsPackage;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/swmansion/rnscreens/RNScreensPackage;

    invoke-direct {v2}, Lcom/swmansion/rnscreens/RNScreensPackage;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/fpe/comptenickel/RSAPackage;

    invoke-direct {v2}, Lcom/fpe/comptenickel/RSAPackage;-><init>()V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 43
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method public getUseDeveloperSupport()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
