.class public Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;
.super Ljava/lang/Object;
.source "LottieAnimationViewPropertyManager.java"


# instance fields
.field private animationJson:Ljava/lang/String;

.field private animationName:Ljava/lang/String;

.field private animationNameDirty:Z

.field private colorFilters:Lcom/facebook/react/bridge/ReadableArray;

.field private enableMergePaths:Ljava/lang/Boolean;

.field private imageAssetsFolder:Ljava/lang/String;

.field private loop:Ljava/lang/Boolean;

.field private progress:Ljava/lang/Float;

.field private scaleType:Landroid/widget/ImageView$ScaleType;

.field private speed:Ljava/lang/Float;

.field private final viewWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/airbnb/lottie/LottieAnimationView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->viewWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public commitChanges()V
    .locals 8

    .line 97
    iget-object v0, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->viewWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->animationJson:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 103
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimationFromJson(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iput-object v2, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->animationJson:Ljava/lang/String;

    .line 107
    :cond_1
    iget-boolean v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->animationNameDirty:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 108
    iget-object v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->animationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    .line 109
    iput-boolean v3, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->animationNameDirty:Z

    .line 112
    :cond_2
    iget-object v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->progress:Ljava/lang/Float;

    if-eqz v1, :cond_3

    .line 113
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 114
    iput-object v2, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->progress:Ljava/lang/Float;

    .line 117
    :cond_3
    iget-object v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->loop:Ljava/lang/Boolean;

    if-eqz v1, :cond_5

    .line 118
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 119
    iput-object v2, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->loop:Ljava/lang/Boolean;

    .line 122
    :cond_5
    iget-object v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->speed:Ljava/lang/Float;

    if-eqz v1, :cond_6

    .line 123
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setSpeed(F)V

    .line 124
    iput-object v2, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->speed:Ljava/lang/Float;

    .line 127
    :cond_6
    iget-object v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->scaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v1, :cond_7

    .line 128
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 129
    iput-object v2, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->scaleType:Landroid/widget/ImageView$ScaleType;

    .line 132
    :cond_7
    iget-object v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->imageAssetsFolder:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 133
    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageAssetsFolder(Ljava/lang/String;)V

    .line 134
    iput-object v2, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->imageAssetsFolder:Ljava/lang/String;

    .line 137
    :cond_8
    iget-object v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->enableMergePaths:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    .line 138
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->enableMergePathsForKitKatAndAbove(Z)V

    .line 139
    iput-object v2, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->enableMergePaths:Ljava/lang/Boolean;

    .line 142
    :cond_9
    iget-object v1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->colorFilters:Lcom/facebook/react/bridge/ReadableArray;

    if-eqz v1, :cond_a

    invoke-interface {v1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v1

    if-lez v1, :cond_a

    const/4 v1, 0x0

    .line 143
    :goto_1
    iget-object v2, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->colorFilters:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    .line 144
    iget-object v2, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->colorFilters:Lcom/facebook/react/bridge/ReadableArray;

    invoke-interface {v2, v1}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v2

    const-string v4, "color"

    .line 145
    invoke-interface {v2, v4}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "keypath"

    .line 146
    invoke-interface {v2, v5}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 147
    new-instance v5, Lcom/airbnb/lottie/SimpleColorFilter;

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v5, v4}, Lcom/airbnb/lottie/SimpleColorFilter;-><init>(I)V

    .line 148
    new-instance v4, Lcom/airbnb/lottie/model/KeyPath;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    aput-object v2, v6, v3

    const/4 v2, 0x1

    const-string v7, "**"

    aput-object v7, v6, v2

    invoke-direct {v4, v6}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 149
    new-instance v2, Lcom/airbnb/lottie/value/LottieValueCallback;

    invoke-direct {v2, v5}, Lcom/airbnb/lottie/value/LottieValueCallback;-><init>(Ljava/lang/Object;)V

    .line 150
    sget-object v5, Lcom/airbnb/lottie/LottieProperty;->COLOR_FILTER:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v4, v5, v2}, Lcom/airbnb/lottie/LottieAnimationView;->addValueCallback(Lcom/airbnb/lottie/model/KeyPath;Ljava/lang/Object;Lcom/airbnb/lottie/value/LottieValueCallback;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_a
    return-void
.end method

.method public setAnimationJson(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->animationJson:Ljava/lang/String;

    return-void
.end method

.method public setAnimationName(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->animationName:Ljava/lang/String;

    const/4 p1, 0x1

    .line 52
    iput-boolean p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->animationNameDirty:Z

    return-void
.end method

.method public setColorFilters(Lcom/facebook/react/bridge/ReadableArray;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->colorFilters:Lcom/facebook/react/bridge/ReadableArray;

    return-void
.end method

.method public setEnableMergePaths(Z)V
    .locals 0

    .line 80
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->enableMergePaths:Ljava/lang/Boolean;

    return-void
.end method

.method public setImageAssetsFolder(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->imageAssetsFolder:Ljava/lang/String;

    return-void
.end method

.method public setLoop(Z)V
    .locals 0

    .line 68
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->loop:Ljava/lang/Boolean;

    return-void
.end method

.method public setProgress(Ljava/lang/Float;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->progress:Ljava/lang/Float;

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public setSpeed(F)V
    .locals 0

    .line 64
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/android/react/lottie/LottieAnimationViewPropertyManager;->speed:Ljava/lang/Float;

    return-void
.end method
