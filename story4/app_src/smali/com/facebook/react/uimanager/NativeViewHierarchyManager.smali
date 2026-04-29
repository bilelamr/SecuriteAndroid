.class public Lcom/facebook/react/uimanager/NativeViewHierarchyManager;
.super Ljava/lang/Object;
.source "NativeViewHierarchyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/uimanager/NativeViewHierarchyManager$PopupMenuCallbackHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NativeViewHierarchyManager"


# instance fields
.field private final mDroppedViewArray:[I

.field private mDroppedViewIndex:I

.field private final mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

.field private mLayoutAnimationEnabled:Z

.field private final mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private final mRootTags:Landroid/util/SparseBooleanArray;

.field private final mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;

.field private final mTagsToPendingIndicesToDelete:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private final mTagsToViewManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/react/uimanager/ViewManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mTagsToViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewManagers:Lcom/facebook/react/uimanager/ViewManagerRegistry;


# direct methods
.method public constructor <init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;)V
    .locals 1

    .line 85
    new-instance v0, Lcom/facebook/react/uimanager/RootViewManager;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/RootViewManager;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;-><init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/RootViewManager;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/uimanager/ViewManagerRegistry;Lcom/facebook/react/uimanager/RootViewManager;)V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Lcom/facebook/react/touch/JSResponderHandler;

    invoke-direct {v0}, Lcom/facebook/react/touch/JSResponderHandler;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    .line 76
    new-instance v0, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    invoke-direct {v0}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToPendingIndicesToDelete:Ljava/util/Map;

    const/16 v0, 0x64

    new-array v0, v0, [I

    .line 78
    iput-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mDroppedViewArray:[I

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mDroppedViewIndex:I

    .line 89
    iput-object p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mViewManagers:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    .line 90
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    .line 91
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViewManagers:Landroid/util/SparseArray;

    .line 92
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    .line 93
    iput-object p2, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;

    return-void
.end method

.method private arrayContains([II)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 521
    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p1, v2

    if-ne v3, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private cacheDroppedTag(I)V
    .locals 2

    .line 599
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mDroppedViewArray:[I

    iget v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mDroppedViewIndex:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 600
    rem-int/lit8 v1, v1, 0x64

    iput v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mDroppedViewIndex:I

    return-void
.end method

.method private static constructManageChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)Ljava/lang/String;
    .locals 11

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ],\n"

    const-string v2, ","

    const-string v3, "): [\n"

    const-string v4, "\n"

    const/16 v5, 0x10

    const/4 v6, 0x0

    if-eqz p0, :cond_2

    .line 284
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "View tag:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  children("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    .line 286
    :goto_0
    invoke-virtual {p1, p0}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v8

    if-ge v7, v8, :cond_1

    const/4 v8, 0x0

    :goto_1
    add-int v9, v7, v8

    .line 288
    invoke-virtual {p1, p0}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v10

    if-ge v9, v10, :cond_0

    if-ge v8, v5, :cond_0

    .line 290
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0, v9}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getId()I

    move-result v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 292
    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x10

    goto :goto_0

    .line 294
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p2, :cond_5

    .line 298
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "  indicesToRemove("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    .line 299
    :goto_2
    array-length p1, p2

    if-ge p0, p1, :cond_4

    const/4 p1, 0x0

    :goto_3
    add-int v7, p0, p1

    .line 302
    array-length v8, p2

    if-ge v7, v8, :cond_3

    if-ge p1, v5, :cond_3

    .line 304
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    aget v7, p2, v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 306
    :cond_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x10

    goto :goto_2

    .line 308
    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    if-eqz p3, :cond_8

    .line 311
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "  viewsToAdd("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p3

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    .line 312
    :goto_4
    array-length p1, p3

    if-ge p0, p1, :cond_7

    const/4 p1, 0x0

    :goto_5
    add-int p2, p0, p1

    .line 315
    array-length v7, p3

    if-ge p2, v7, :cond_6

    if-ge p1, v5, :cond_6

    .line 317
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, p3, p2

    iget v8, v8, Lcom/facebook/react/uimanager/ViewAtIndex;->mIndex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p2, p3, p2

    iget p2, p2, Lcom/facebook/react/uimanager/ViewAtIndex;->mTag:I

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "],"

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_5

    .line 321
    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x10

    goto :goto_4

    .line 323
    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    if-eqz p4, :cond_b

    .line 326
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "  tagsToDelete("

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p4

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    .line 327
    :goto_6
    array-length p1, p4

    if-ge p0, p1, :cond_a

    const/4 p1, 0x0

    :goto_7
    add-int p2, p0, p1

    .line 330
    array-length p3, p4

    if-ge p2, p3, :cond_9

    if-ge p1, v5, :cond_9

    .line 332
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    aget p2, p4, p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    .line 334
    :cond_9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x10

    goto :goto_6

    :cond_a
    const-string p0, " ]\n"

    .line 336
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getOrCreatePendingIndicesToDelete(I)Landroid/util/SparseIntArray;
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToPendingIndicesToDelete:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    if-nez v0, :cond_0

    .line 361
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 362
    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToPendingIndicesToDelete:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private getReactContextForView(I)Lcom/facebook/react/uimanager/ThemedReactContext;
    .locals 3

    .line 849
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 853
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcom/facebook/react/uimanager/ThemedReactContext;

    return-object p1

    .line 851
    :cond_0
    new-instance v0, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find view with tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private normalizeIndex(ILandroid/util/SparseIntArray;)I
    .locals 3

    const/4 v0, 0x0

    move v1, p1

    :goto_0
    if-gt v0, p1, :cond_0

    .line 349
    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private updateLayout(Landroid/view/View;IIII)V
    .locals 7

    .line 236
    iget-boolean v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimationEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    .line 237
    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->shouldAnimateLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->applyLayoutUpdate(Landroid/view/View;IIII)V

    goto :goto_0

    :cond_0
    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 240
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addRootView(ILandroid/view/View;)V
    .locals 0

    monitor-enter p0

    .line 579
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->addRootViewGroup(ILandroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 580
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final declared-synchronized addRootViewGroup(ILandroid/view/View;)V
    .locals 3

    monitor-enter p0

    .line 583
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 584
    sget-object v0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to add a root view with an explicit id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") already set. React Native uses the id field to track react tags and will overwrite this field. If that is fine, explicitly overwrite the id field to View.NO_ID before calling addRootView."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 584
    invoke-static {v0, v1}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 593
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViewManagers:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootViewManager:Lcom/facebook/react/uimanager/RootViewManager;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 594
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 595
    invoke-virtual {p2, p1}, Landroid/view/View;->setId(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clearJSResponder()V
    .locals 1

    .line 749
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    invoke-virtual {v0}, Lcom/facebook/react/touch/JSResponderHandler;->clearJSResponder()V

    return-void
.end method

.method clearLayoutAnimation()V
    .locals 1

    .line 757
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    invoke-virtual {v0}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->reset()V

    return-void
.end method

.method configureLayoutAnimation(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->initializeFromConfig(Lcom/facebook/react/bridge/ReadableMap;Lcom/facebook/react/bridge/Callback;)V

    return-void
.end method

.method public declared-synchronized createView(Lcom/facebook/react/uimanager/ThemedReactContext;ILjava/lang/String;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 4

    monitor-enter p0

    .line 249
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    const-string v0, "NativeViewHierarchyManager_createView"

    const-wide/16 v1, 0x0

    .line 250
    invoke-static {v1, v2, v0}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v0

    const-string v3, "tag"

    .line 253
    invoke-virtual {v0, v3, p2}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    const-string v3, "className"

    .line 254
    invoke-virtual {v0, v3, p3}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/systrace/SystraceMessage$Builder;

    .line 255
    invoke-virtual {v0}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 257
    :try_start_1
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mViewManagers:Lcom/facebook/react/uimanager/ViewManagerRegistry;

    invoke-virtual {v0, p3}, Lcom/facebook/react/uimanager/ViewManagerRegistry;->get(Ljava/lang/String;)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object p3

    const/4 v0, 0x0

    .line 259
    iget-object v3, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    invoke-virtual {p3, p1, v0, v3}, Lcom/facebook/react/uimanager/ViewManager;->createViewWithProps(Lcom/facebook/react/uimanager/ThemedReactContext;Lcom/facebook/react/uimanager/ReactStylesDiffMap;Lcom/facebook/react/touch/JSResponderHandler;)Landroid/view/View;

    move-result-object p1

    .line 260
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 261
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViewManagers:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 266
    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    if-eqz p4, :cond_0

    .line 268
    invoke-virtual {p3, p1, p4}, Lcom/facebook/react/uimanager/ViewManager;->updateProperties(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    :cond_0
    :try_start_2
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 273
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 271
    :try_start_3
    invoke-static {v1, v2}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 272
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public dismissPopupMenu()V
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 811
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    :cond_0
    return-void
.end method

.method public declared-synchronized dispatchCommand(IILcom/facebook/react/bridge/ReadableArray;)V
    .locals 1

    monitor-enter p0

    .line 764
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 765
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 771
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object p1

    .line 772
    invoke-virtual {p1, v0, p2, p3}, Lcom/facebook/react/uimanager/ViewManager;->receiveCommand(Landroid/view/View;ILcom/facebook/react/bridge/ReadableArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    monitor-exit p0

    return-void

    .line 767
    :cond_0
    :try_start_1
    new-instance p2, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Trying to send command to a non-existing view with tag "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized dropView(Landroid/view/View;)V
    .locals 6

    monitor-enter p0

    .line 607
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 610
    monitor-exit p0

    return-void

    .line 612
    :cond_0
    :try_start_1
    sget-boolean v0, Lcom/facebook/react/config/ReactFeatureFlags;->logDroppedViews:Z

    if-eqz v0, :cond_1

    .line 613
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->cacheDroppedTag(I)V

    .line 615
    :cond_1
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViewManagers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    .line 618
    monitor-exit p0

    return-void

    .line 620
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 622
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/react/uimanager/ViewManager;->onDropViewInstance(Landroid/view/View;)V

    .line 624
    :cond_3
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViewManagers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ViewManager;

    .line 625
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    instance-of v1, v0, Lcom/facebook/react/uimanager/ViewGroupManager;

    if-eqz v1, :cond_7

    .line 626
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    .line 627
    check-cast v0, Lcom/facebook/react/uimanager/ViewGroupManager;

    .line 628
    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_6

    .line 629
    invoke-virtual {v0, v1, v2}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_4

    .line 631
    sget-object v3, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->TAG:Ljava/lang/String;

    const-string v4, "Unable to drop null child view"

    invoke-static {v3, v4}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 632
    :cond_4
    iget-object v4, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 633
    invoke-virtual {p0, v3}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->dropView(Landroid/view/View;)V

    :cond_5
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 636
    :cond_6
    invoke-virtual {v0, v1}, Lcom/facebook/react/uimanager/ViewGroupManager;->removeAllViews(Landroid/view/ViewGroup;)V

    .line 638
    :cond_7
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToPendingIndicesToDelete:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 640
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViewManagers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 641
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public declared-synchronized findTargetTagForTouch(IFF)I
    .locals 1

    monitor-enter p0

    .line 715
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 716
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 720
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p2, p3, v0}, Lcom/facebook/react/uimanager/TouchTargetHelper;->findTargetTagForTouch(FFLandroid/view/ViewGroup;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    .line 718
    :cond_0
    :try_start_1
    new-instance p2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not find view with tag "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized manageChildren(I[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I[I)V
    .locals 16

    move-object/from16 v8, p0

    move/from16 v0, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    monitor-enter p0

    .line 381
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 383
    invoke-direct/range {p0 .. p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->getOrCreatePendingIndicesToDelete(I)Landroid/util/SparseIntArray;

    move-result-object v12

    .line 385
    iget-object v1, v8, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/view/ViewGroup;

    .line 386
    invoke-virtual/range {p0 .. p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/facebook/react/uimanager/ViewGroupManager;

    if-eqz v13, :cond_b

    .line 398
    invoke-virtual {v14, v13}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v1

    if-eqz v9, :cond_5

    .line 400
    array-length v2, v9

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_5

    .line 401
    aget v3, v9, v2

    if-ltz v3, :cond_4

    .line 413
    invoke-virtual {v14, v13}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v4

    if-lt v3, v4, :cond_1

    .line 414
    iget-object v1, v8, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v14, v13}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildCount(Landroid/view/ViewGroup;)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 417
    monitor-exit p0

    return-void

    .line 419
    :cond_0
    :try_start_1
    new-instance v1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to remove a view index above child count "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " view tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n detail: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    invoke-static {v13, v14, v9, v10, v11}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->constructManageChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-ge v3, v1, :cond_3

    .line 441
    invoke-direct {v8, v3, v12}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->normalizeIndex(ILandroid/util/SparseIntArray;)I

    move-result v1

    .line 442
    invoke-virtual {v14, v13, v1}, Lcom/facebook/react/uimanager/ViewGroupManager;->getChildAt(Landroid/view/ViewGroup;I)Landroid/view/View;

    move-result-object v4

    .line 444
    iget-boolean v5, v8, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimationEnabled:Z

    if-eqz v5, :cond_2

    iget-object v5, v8, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    .line 445
    invoke-virtual {v5, v4}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->shouldAnimateLayout(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 446
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v4

    invoke-direct {v8, v11, v4}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->arrayContains([II)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 450
    :cond_2
    invoke-virtual {v14, v13, v1}, Lcom/facebook/react/uimanager/ViewGroupManager;->removeViewAt(Landroid/view/ViewGroup;I)V

    :goto_1
    add-int/lit8 v2, v2, -0x1

    move v1, v3

    goto :goto_0

    .line 430
    :cond_3
    new-instance v1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to remove an out of order view index:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " view tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n detail: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    invoke-static {v13, v14, v9, v10, v11}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->constructManageChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 403
    :cond_4
    new-instance v1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to remove a negative view index:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " view tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n detail: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-static {v13, v14, v9, v10, v11}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->constructManageChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    const/4 v0, 0x0

    if-eqz v11, :cond_8

    const/4 v15, 0x0

    .line 458
    :goto_2
    array-length v1, v11

    if-ge v15, v1, :cond_8

    .line 459
    aget v1, v11, v15

    .line 460
    aget v7, p5, v15

    .line 461
    iget-object v2, v8, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/view/View;

    if-eqz v6, :cond_7

    .line 474
    iget-boolean v1, v8, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimationEnabled:Z

    if-eqz v1, :cond_6

    iget-object v1, v8, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    .line 475
    invoke-virtual {v1, v6}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->shouldAnimateLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 476
    invoke-virtual {v12, v7, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 477
    invoke-virtual {v12, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 478
    iget-object v5, v8, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimator:Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;

    new-instance v4, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$1;

    move-object v1, v4

    move-object/from16 v2, p0

    move-object v3, v14

    move-object v0, v4

    move-object v4, v13

    move-object v9, v5

    move-object v5, v6

    move-object v10, v6

    move-object v6, v12

    invoke-direct/range {v1 .. v7}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$1;-><init>(Lcom/facebook/react/uimanager/NativeViewHierarchyManager;Lcom/facebook/react/uimanager/ViewGroupManager;Landroid/view/ViewGroup;Landroid/view/View;Landroid/util/SparseIntArray;I)V

    invoke-virtual {v9, v10, v0}, Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationController;->deleteView(Landroid/view/View;Lcom/facebook/react/uimanager/layoutanimation/LayoutAnimationListener;)V

    goto :goto_3

    :cond_6
    move-object v10, v6

    .line 491
    invoke-virtual {v8, v10}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->dropView(Landroid/view/View;)V

    :goto_3
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const/4 v0, 0x0

    goto :goto_2

    .line 463
    :cond_7
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to destroy unknown view tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n detail: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p2

    move-object/from16 v3, p3

    .line 466
    invoke-static {v13, v14, v1, v3, v11}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->constructManageChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v1, v9

    move-object v3, v10

    if-eqz v3, :cond_a

    const/4 v0, 0x0

    .line 497
    :goto_4
    array-length v2, v3

    if-ge v0, v2, :cond_a

    .line 498
    aget-object v2, v3, v0

    .line 499
    iget-object v4, v8, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    iget v5, v2, Lcom/facebook/react/uimanager/ViewAtIndex;->mTag:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_9

    .line 511
    iget v2, v2, Lcom/facebook/react/uimanager/ViewAtIndex;->mIndex:I

    invoke-direct {v8, v2, v12}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->normalizeIndex(ILandroid/util/SparseIntArray;)I

    move-result v2

    .line 512
    invoke-virtual {v14, v13, v4, v2}, Lcom/facebook/react/uimanager/ViewGroupManager;->addView(Landroid/view/ViewGroup;Landroid/view/View;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 501
    :cond_9
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to add unknown view tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Lcom/facebook/react/uimanager/ViewAtIndex;->mTag:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n detail: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-static {v13, v14, v1, v3, v11}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->constructManageChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    :cond_a
    monitor-exit p0

    return-void

    :cond_b
    move-object v1, v9

    move-object v3, v10

    .line 388
    :try_start_2
    new-instance v2, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trying to manageChildren view with tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " which doesn\'t exist\n detail: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-static {v13, v14, v1, v3, v11}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->constructManageChildrenErrorMessage(Landroid/view/ViewGroup;Lcom/facebook/react/uimanager/ViewGroupManager;[I[Lcom/facebook/react/uimanager/ViewAtIndex;[I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public declared-synchronized measure(I[I)V
    .locals 5

    monitor-enter p0

    .line 659
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 660
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 665
    invoke-static {v0}, Lcom/facebook/react/uimanager/RootViewUtil;->getRootView(Landroid/view/View;)Lcom/facebook/react/uimanager/RootView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 671
    invoke-virtual {v1, p2}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 p1, 0x0

    .line 672
    aget v1, p2, p1

    const/4 v2, 0x1

    .line 673
    aget v3, p2, v2

    .line 675
    invoke-virtual {v0, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 677
    aget v4, p2, p1

    sub-int/2addr v4, v1

    aput v4, p2, p1

    .line 678
    aget p1, p2, v2

    sub-int/2addr p1, v3

    aput p1, p2, v2

    const/4 p1, 0x2

    .line 679
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    aput v1, p2, p1

    const/4 p1, 0x3

    .line 680
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    aput v0, p2, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 681
    monitor-exit p0

    return-void

    .line 669
    :cond_0
    :try_start_1
    new-instance p2, Lcom/facebook/react/uimanager/NoSuchNativeViewException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Native view "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is no longer on screen"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/uimanager/NoSuchNativeViewException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 662
    :cond_1
    new-instance p2, Lcom/facebook/react/uimanager/NoSuchNativeViewException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No native view for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " currently exists"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/uimanager/NoSuchNativeViewException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized measureInWindow(I[I)V
    .locals 4

    monitor-enter p0

    .line 692
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 693
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 698
    invoke-virtual {v0, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 702
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    .line 703
    invoke-virtual {p1, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    .line 705
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    const/4 v1, 0x1

    .line 706
    aget v2, p2, v1

    sub-int/2addr v2, p1

    aput v2, p2, v1

    :cond_0
    const/4 p1, 0x2

    .line 710
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    aput v1, p2, p1

    const/4 p1, 0x3

    .line 711
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    aput v0, p2, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 712
    monitor-exit p0

    return-void

    .line 695
    :cond_1
    :try_start_1
    new-instance p2, Lcom/facebook/react/uimanager/NoSuchNativeViewException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No native view for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " currently exists"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/uimanager/NoSuchNativeViewException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeRootView(I)V
    .locals 2

    monitor-enter p0

    .line 644
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 645
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 646
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "View with tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not registered as a root view"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/react/bridge/SoftAssertions;->assertUnreachable(Ljava/lang/String;)V

    .line 649
    :cond_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 650
    invoke-virtual {p0, v0}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->dropView(Landroid/view/View;)V

    .line 651
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized resolveView(I)Landroid/view/View;
    .locals 3

    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 102
    monitor-exit p0

    return-object v0

    .line 99
    :cond_0
    :try_start_1
    new-instance v0, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to resolve view with tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " which doesn\'t exist"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;
    .locals 4

    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViewManagers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/uimanager/ViewManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 114
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [[I

    const/4 v1, 0x0

    .line 108
    iget-object v2, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mDroppedViewArray:[I

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 109
    new-instance v1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ViewManager for tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " could not be found.\n View already dropped? "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ".\nLast index "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mDroppedViewIndex:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " in last 100 views"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mDroppedViewArray:[I

    .line 112
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sendAccessibilityEvent(II)V
    .locals 2

    .line 857
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 861
    invoke-virtual {v0, p2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    return-void

    .line 859
    :cond_0
    new-instance p2, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find view with tag "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/facebook/react/bridge/JSApplicationIllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public declared-synchronized setJSResponder(IIZ)V
    .locals 2

    monitor-enter p0

    if-nez p3, :cond_0

    .line 728
    :try_start_0
    iget-object p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/facebook/react/touch/JSResponderHandler;->setJSResponder(ILandroid/view/ViewParent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    monitor-exit p0

    return-void

    .line 732
    :cond_0
    :try_start_1
    iget-object p3, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    if-eq p2, p1, :cond_1

    .line 733
    instance-of v0, p3, Landroid/view/ViewParent;

    if-eqz v0, :cond_1

    .line 736
    iget-object p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    check-cast p3, Landroid/view/ViewParent;

    invoke-virtual {p1, p2, p3}, Lcom/facebook/react/touch/JSResponderHandler;->setJSResponder(ILandroid/view/ViewParent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 737
    monitor-exit p0

    return-void

    .line 740
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 741
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot block native responder on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " that is a root view"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/react/bridge/SoftAssertions;->assertUnreachable(Ljava/lang/String;)V

    .line 744
    :cond_2
    iget-object p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mJSResponderHandler:Lcom/facebook/react/touch/JSResponderHandler;

    .line 745
    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/facebook/react/touch/JSResponderHandler;->setJSResponder(ILandroid/view/ViewParent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 746
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLayoutAnimationEnabled(Z)V
    .locals 0

    .line 118
    iput-boolean p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mLayoutAnimationEnabled:Z

    return-void
.end method

.method public declared-synchronized showPopupMenu(ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/bridge/Callback;)V
    .locals 2

    monitor-enter p0

    .line 786
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 787
    iget-object v0, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .line 789
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t display popup. Could not find view with tag "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v1

    invoke-interface {p4, p2}, Lcom/facebook/react/bridge/Callback;->invoke([Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 790
    monitor-exit p0

    return-void

    .line 792
    :cond_0
    :try_start_1
    new-instance p4, Landroid/widget/PopupMenu;

    invoke-direct {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->getReactContextForView(I)Lcom/facebook/react/uimanager/ThemedReactContext;

    move-result-object p1

    invoke-direct {p4, p1, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object p4, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 794
    iget-object p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    const/4 p4, 0x0

    .line 795
    :goto_0
    invoke-interface {p2}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v0

    if-ge p4, v0, :cond_1

    .line 796
    invoke-interface {p2, p4}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v1, p4, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 799
    :cond_1
    new-instance p1, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$PopupMenuCallbackHandler;

    const/4 p2, 0x0

    invoke-direct {p1, p3, p2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager$PopupMenuCallbackHandler;-><init>(Lcom/facebook/react/bridge/Callback;Lcom/facebook/react/uimanager/NativeViewHierarchyManager$1;)V

    .line 800
    iget-object p2, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p2, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 801
    iget-object p2, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p2, p1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 803
    iget-object p1, p0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 804
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized updateLayout(IIIIII)V
    .locals 10

    move-object v7, p0

    move v0, p1

    move v1, p2

    monitor-enter p0

    .line 156
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    const-string v2, "NativeViewHierarchyManager_updateLayout"

    const-wide/16 v8, 0x0

    .line 157
    invoke-static {v8, v9, v2}, Lcom/facebook/systrace/SystraceMessage;->beginSection(JLjava/lang/String;)Lcom/facebook/systrace/SystraceMessage$Builder;

    move-result-object v2

    const-string v3, "parentTag"

    .line 160
    invoke-virtual {v2, v3, p1}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    const-string v3, "tag"

    .line 161
    invoke-virtual {v2, v3, p2}, Lcom/facebook/systrace/SystraceMessage$Builder;->arg(Ljava/lang/String;I)Lcom/facebook/systrace/SystraceMessage$Builder;

    .line 162
    invoke-virtual {v2}, Lcom/facebook/systrace/SystraceMessage$Builder;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 164
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object v2

    const/high16 v1, 0x40000000    # 2.0f

    move v5, p5

    .line 178
    invoke-static {p5, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    move/from16 v6, p6

    .line 179
    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 177
    invoke-virtual {v2, v3, v1}, Landroid/view/View;->measure(II)V

    .line 189
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 190
    instance-of v3, v1, Lcom/facebook/react/uimanager/RootView;

    if-eqz v3, :cond_0

    .line 191
    invoke-interface {v1}, Landroid/view/ViewParent;->requestLayout()V

    .line 195
    :cond_0
    iget-object v1, v7, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mRootTags:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 196
    iget-object v1, v7, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->mTagsToViewManagers:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/react/uimanager/ViewManager;

    .line 198
    instance-of v3, v1, Lcom/facebook/react/uimanager/IViewManagerWithChildren;

    if-eqz v3, :cond_1

    .line 199
    check-cast v1, Lcom/facebook/react/uimanager/IViewManagerWithChildren;

    if-eqz v1, :cond_3

    .line 206
    invoke-interface {v1}, Lcom/facebook/react/uimanager/IViewManagerWithChildren;->needsCustomLayoutForChildren()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v1, p0

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    .line 207
    invoke-direct/range {v1 .. v6}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->updateLayout(Landroid/view/View;IIII)V

    goto :goto_0

    .line 201
    :cond_1
    new-instance v1, Lcom/facebook/react/uimanager/IllegalViewOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to use view with tag "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " as a parent, but its Manager doesn\'t implement IViewManagerWithChildren"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/react/uimanager/IllegalViewOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    move-object v1, p0

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    .line 210
    invoke-direct/range {v1 .. v6}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->updateLayout(Landroid/view/View;IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 213
    :cond_3
    :goto_0
    :try_start_2
    invoke-static {v8, v9}, Lcom/facebook/systrace/Systrace;->endSection(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 215
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    .line 213
    :try_start_3
    invoke-static {v8, v9}, Lcom/facebook/systrace/Systrace;->endSection(J)V

    .line 214
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateProperties(ILcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    .locals 3

    monitor-enter p0

    .line 132
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v0

    .line 136
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 139
    invoke-virtual {v0, v1, p2}, Lcom/facebook/react/uimanager/ViewManager;->updateProperties(Landroid/view/View;Lcom/facebook/react/uimanager/ReactStylesDiffMap;)V
    :try_end_1
    .catch Lcom/facebook/react/uimanager/IllegalViewOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 142
    :try_start_2
    sget-object v0, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to update properties for view tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized updateViewExtraData(ILjava/lang/Object;)V
    .locals 1

    monitor-enter p0

    .line 147
    :try_start_0
    invoke-static {}, Lcom/facebook/react/bridge/UiThreadUtil;->assertOnUiThread()V

    .line 149
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveViewManager(I)Lcom/facebook/react/uimanager/ViewManager;

    move-result-object v0

    .line 150
    invoke-virtual {p0, p1}, Lcom/facebook/react/uimanager/NativeViewHierarchyManager;->resolveView(I)Landroid/view/View;

    move-result-object p1

    .line 151
    invoke-virtual {v0, p1, p2}, Lcom/facebook/react/uimanager/ViewManager;->updateExtraData(Landroid/view/View;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
