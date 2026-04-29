.class public final Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;
.super Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;
.source "InboxAdapter.kt"

# interfaces
.implements Lcom/pushwoosh/inbox/ui/presentation/view/adapter/ItemTouchHelperAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter<",
        "Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder<",
        "Lcom/pushwoosh/inbox/data/InboxMessage;",
        ">;",
        "Lcom/pushwoosh/inbox/data/InboxMessage;",
        ">;",
        "Lcom/pushwoosh/inbox/ui/presentation/view/adapter/ItemTouchHelperAdapter;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter$Companion;

.field public static final TEXT_VIEW_TYPE:I


# instance fields
.field private attachmentClickListener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final colorSchemeProvider:Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;

.field private lastPosition:I

.field private onItemClick:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onItemRemoved:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onItemStartSwipe:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onItemStopSwipe:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;->Companion:Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "colorSchemeProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentClickListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, p1}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;->colorSchemeProvider:Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;

    .line 51
    iput-object p3, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;->attachmentClickListener:Lkotlin/jvm/functions/Function2;

    const/4 p1, -0x1

    .line 52
    iput p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;->lastPosition:I

    return-void
.end method


# virtual methods
.method protected createViewHolderInstance(Landroid/view/ViewGroup;I)Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;"
        }
    .end annotation

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 78
    new-instance p2, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;

    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;->colorSchemeProvider:Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;

    iget-object v1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;->attachmentClickListener:Lkotlin/jvm/functions/Function2;

    invoke-direct {p2, p1, p0, v0, v1}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxViewHolder;-><init>(Landroid/view/ViewGroup;Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;Lcom/pushwoosh/inbox/ui/presentation/view/style/ColorSchemeProvider;Lkotlin/jvm/functions/Function2;)V

    return-object p2

    .line 79
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getAttachmentClickListener()Lkotlin/jvm/functions/Function2;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;->attachmentClickListener:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 82
    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pushwoosh/inbox/data/InboxMessage;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/pushwoosh/inbox/data/InboxMessage;->getType()Lcom/pushwoosh/inbox/data/InboxMessageType;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/pushwoosh/inbox/data/InboxMessageType;->PLAIN:Lcom/pushwoosh/inbox/data/InboxMessageType;

    :goto_0
    sget-object v0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    goto :goto_1

    .line 87
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public final getOnItemClick()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;->onItemClick:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnItemRemoved()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;->onItemRemoved:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method

.method public final getOnItemStartSwipe()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;->onItemStartSwipe:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getOnItemStopSwipe()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;->onItemStopSwipe:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 39
    check-cast p1, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;->onBindViewHolder(Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder<",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    invoke-super {p0, p1, p2}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->onBindViewHolder(Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter$ViewHolder;I)V

    .line 71
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter$onBindViewHolder$1;

    invoke-direct {v0, p0, p2}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter$onBindViewHolder$1;-><init>(Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onItemSwiped(I)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;->onItemRemoved:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/BaseRecyclerAdapter;->getCollection()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 66
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void
.end method

.method public final setAttachmentClickListener(Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Landroid/view/View;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;->attachmentClickListener:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public final setOnItemClick(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;->onItemClick:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnItemRemoved(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/pushwoosh/inbox/data/InboxMessage;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;->onItemRemoved:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnItemStartSwipe(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;->onItemStartSwipe:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnItemStopSwipe(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;->onItemStopSwipe:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public startSwipe()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;->onItemStartSwipe:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    :cond_0
    return-void
.end method

.method public stopSwipe()V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/pushwoosh/inbox/ui/presentation/view/adapter/inbox/InboxAdapter;->onItemStopSwipe:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Unit;

    :cond_0
    return-void
.end method
