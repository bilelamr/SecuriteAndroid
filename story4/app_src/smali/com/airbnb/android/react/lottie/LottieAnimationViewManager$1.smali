.class Lcom/airbnb/android/react/lottie/LottieAnimationViewManager$1;
.super Ljava/lang/Object;
.source "LottieAnimationViewManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->createViewInstance(Lcom/facebook/react/uimanager/ThemedReactContext;)Lcom/airbnb/lottie/LottieAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;

.field final synthetic val$view:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method constructor <init>(Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager$1;->this$0:Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;

    iput-object p2, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager$1;->val$view:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 61
    iget-object p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager$1;->this$0:Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;

    iget-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager$1;->val$view:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->access$000(Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;Lcom/airbnb/lottie/LottieAnimationView;Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 56
    iget-object p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager$1;->this$0:Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;

    iget-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager$1;->val$view:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;->access$000(Lcom/airbnb/android/react/lottie/LottieAnimationViewManager;Lcom/airbnb/lottie/LottieAnimationView;Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
