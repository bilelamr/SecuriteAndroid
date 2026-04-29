.class public Lorg/devio/rn/splashscreen/SplashScreen;
.super Ljava/lang/Object;
.source "SplashScreen.java"


# static fields
.field private static mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private static mSplashDialog:Landroid/app/Dialog;


# direct methods
.method static synthetic access$000()Landroid/app/Dialog;
    .locals 1

    .line 17
    sget-object v0, Lorg/devio/rn/splashscreen/SplashScreen;->mSplashDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$002(Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0

    .line 17
    sput-object p0, Lorg/devio/rn/splashscreen/SplashScreen;->mSplashDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method public static hide(Landroid/app/Activity;)V
    .locals 1

    if-nez p0, :cond_1

    .line 64
    sget-object p0, Lorg/devio/rn/splashscreen/SplashScreen;->mActivity:Ljava/lang/ref/WeakReference;

    if-nez p0, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    :cond_1
    if-nez p0, :cond_2

    return-void

    .line 74
    :cond_2
    new-instance v0, Lorg/devio/rn/splashscreen/SplashScreen$2;

    invoke-direct {v0, p0}, Lorg/devio/rn/splashscreen/SplashScreen$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static show(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-static {p0, v0}, Lorg/devio/rn/splashscreen/SplashScreen;->show(Landroid/app/Activity;Z)V

    return-void
.end method

.method public static show(Landroid/app/Activity;I)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lorg/devio/rn/splashscreen/SplashScreen;->mActivity:Ljava/lang/ref/WeakReference;

    .line 27
    new-instance v0, Lorg/devio/rn/splashscreen/SplashScreen$1;

    invoke-direct {v0, p0, p1}, Lorg/devio/rn/splashscreen/SplashScreen$1;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static show(Landroid/app/Activity;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 47
    sget p1, Lorg/devio/rn/splashscreen/R$style;->SplashScreen_Fullscreen:I

    goto :goto_0

    :cond_0
    sget p1, Lorg/devio/rn/splashscreen/R$style;->SplashScreen_SplashTheme:I

    .line 49
    :goto_0
    invoke-static {p0, p1}, Lorg/devio/rn/splashscreen/SplashScreen;->show(Landroid/app/Activity;I)V

    return-void
.end method
