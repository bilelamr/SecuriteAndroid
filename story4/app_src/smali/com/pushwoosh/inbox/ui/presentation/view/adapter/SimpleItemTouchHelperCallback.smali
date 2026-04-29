.class public final Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "SimpleItemTouchHelperCallback.kt"


# instance fields
.field private final adapter:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/ItemTouchHelperAdapter;

.field private final icon:Landroid/graphics/Bitmap;

.field private final paint:Landroid/graphics/Paint;

.field private touchable:Z


# direct methods
.method public constructor <init>(Lcom/pushwoosh/inbox/ui/presentation/view/adapter/ItemTouchHelperAdapter;Landroid/content/Context;Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;I)V
    .locals 1

    const-string v0, "adapter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colorSchemeProvider"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;->adapter:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/ItemTouchHelperAdapter;

    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;->touchable:Z

    .line 47
    invoke-static {p2, p4}, Lcom/pushwoosh/inbox/ui/utils/ViewExtensionKt;->getBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;->icon:Landroid/graphics/Bitmap;

    .line 48
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;->paint:Landroid/graphics/Paint;

    .line 51
    iget-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;->paint:Landroid/graphics/Paint;

    invoke-interface {p3}, Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;->getAccentColor()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/pushwoosh/inbox/ui/presentation/view/adapter/ItemTouchHelperAdapter;Landroid/content/Context;Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    .line 45
    sget p4, Lcom/pushwoosh/inbox/ui/R$drawable;->inbox_ic_delete:I

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;-><init>(Lcom/pushwoosh/inbox/ui/presentation/view/adapter/ItemTouchHelperAdapter;Landroid/content/Context;Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;I)V

    return-void
.end method

.method private final updateState(FFZLandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-nez v1, :cond_1

    cmpg-float v0, p2, v0

    if-nez v0, :cond_1

    if-eqz p3, :cond_0

    .line 101
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;->adapter:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/ItemTouchHelperAdapter;

    invoke-interface {v0}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/ItemTouchHelperAdapter;->startSwipe()V

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;->adapter:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/ItemTouchHelperAdapter;

    invoke-interface {v0}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/ItemTouchHelperAdapter;->stopSwipe()V

    .line 107
    :cond_1
    :goto_0
    iget-object v0, p4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "viewHolder.itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-eqz p1, :cond_2

    iget-object p1, p4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-nez p1, :cond_3

    :cond_2
    if-nez p3, :cond_3

    .line 108
    iget-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;->adapter:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/ItemTouchHelperAdapter;

    invoke-interface {p1}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/ItemTouchHelperAdapter;->stopSwipe()V

    :cond_3
    return-void
.end method


# virtual methods
.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "viewHolder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-boolean p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;->touchable:Z

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    const/16 p1, 0x30

    .line 118
    invoke-static {p2, p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public isItemViewSwipeEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .locals 8

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recyclerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewHolder"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p6, v0, :cond_0

    goto/16 :goto_2

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;->icon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    return-void

    .line 69
    :cond_1
    invoke-direct {p0, p4, p5, p7, p3}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;->updateState(FFZLandroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 71
    iget-object v0, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    .line 72
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 73
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "itemView.context"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v3, 0x41a00000    # 20.0f

    invoke-static {v2, v3}, Lcom/pushwoosh/inbox/ui/utils/ViewExtensionKt;->pxFromDp(Landroid/content/Context;F)F

    move-result v2

    .line 75
    iget-object v3, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    const/4 v3, 0x2

    int-to-float v3, v3

    div-float/2addr v1, v3

    .line 76
    iget-object v3, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    int-to-float v3, v3

    div-float/2addr v1, v3

    :goto_0
    const/4 v3, 0x0

    int-to-float v3, v3

    cmpl-float v3, p4, v3

    if-lez v3, :cond_3

    .line 82
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v6, v6

    invoke-direct {v3, v4, v5, p4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 83
    iget-object v4, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 84
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v6, v7

    add-float/2addr v6, v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_1

    .line 86
    :cond_3
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, p4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 87
    iget-object v4, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 88
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v2

    iget-object v5, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v2

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    invoke-direct {v3, v4, v5, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 91
    :goto_1
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;->icon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 95
    :goto_2
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "viewHolder"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "target"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    const-string p2, "viewHolder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;->adapter:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/ItemTouchHelperAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/ItemTouchHelperAdapter;->onItemSwiped(I)V

    return-void
.end method

.method public final setTouchable(Z)V
    .locals 0

    .line 125
    iput-boolean p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/SimpleItemTouchHelperCallback;->touchable:Z

    return-void
.end method
