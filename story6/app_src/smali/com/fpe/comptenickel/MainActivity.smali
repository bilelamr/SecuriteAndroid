.class public Lcom/fpe/comptenickel/MainActivity;
.super Lcom/facebook/react/ReactActivity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/facebook/react/ReactActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected createReactActivityDelegate()Lcom/facebook/react/ReactActivityDelegate;
    .locals 2

    .line 29
    new-instance v0, Lcom/fpe/comptenickel/MainActivity$1;

    invoke-virtual {p0}, Lcom/fpe/comptenickel/MainActivity;->getMainComponentName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p0, v1}, Lcom/fpe/comptenickel/MainActivity$1;-><init>(Lcom/fpe/comptenickel/MainActivity;Lcom/facebook/react/ReactActivity;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getMainComponentName()Ljava/lang/String;
    .locals 1

    const v0, 0x7f11012d

    .line 24
    invoke-static {p0, v0}, Lorg/devio/rn/splashscreen/SplashScreen;->show(Landroid/app/Activity;I)V

    const-string v0, "NickelMobileApp"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    const/4 p1, 0x0

    .line 16
    invoke-super {p0, p1}, Lcom/facebook/react/ReactActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
