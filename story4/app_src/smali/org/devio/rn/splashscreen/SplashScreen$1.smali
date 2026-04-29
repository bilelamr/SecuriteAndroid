.class final Lorg/devio/rn/splashscreen/SplashScreen$1;
.super Ljava/lang/Object;
.source "SplashScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/devio/rn/splashscreen/SplashScreen;->show(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$themeResId:I


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .line 27
    iput-object p1, p0, Lorg/devio/rn/splashscreen/SplashScreen$1;->val$activity:Landroid/app/Activity;

    iput p2, p0, Lorg/devio/rn/splashscreen/SplashScreen$1;->val$themeResId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 30
    iget-object v0, p0, Lorg/devio/rn/splashscreen/SplashScreen$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lorg/devio/rn/splashscreen/SplashScreen$1;->val$activity:Landroid/app/Activity;

    iget v2, p0, Lorg/devio/rn/splashscreen/SplashScreen$1;->val$themeResId:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, Lorg/devio/rn/splashscreen/SplashScreen;->access$002(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 32
    invoke-static {}, Lorg/devio/rn/splashscreen/SplashScreen;->access$000()Landroid/app/Dialog;

    move-result-object v0

    sget v1, Lorg/devio/rn/splashscreen/R$layout;->launch_screen:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 33
    invoke-static {}, Lorg/devio/rn/splashscreen/SplashScreen;->access$000()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 35
    invoke-static {}, Lorg/devio/rn/splashscreen/SplashScreen;->access$000()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Lorg/devio/rn/splashscreen/SplashScreen;->access$000()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
