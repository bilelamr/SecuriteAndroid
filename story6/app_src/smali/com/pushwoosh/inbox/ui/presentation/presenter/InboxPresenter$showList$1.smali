.class final Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter$showList$1;
.super Ljava/lang/Object;
.source "InboxPresenter.kt"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter;->showList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter$showList$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter$showList$1;

    invoke-direct {v0}, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter$showList$1;-><init>()V

    sput-object v0, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter$showList$1;->INSTANCE:Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter$showList$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/pushwoosh/inbox/data/InboxMessage;Lcom/pushwoosh/inbox/data/InboxMessage;)I
    .locals 0

    .line 146
    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 43
    check-cast p1, Lcom/pushwoosh/inbox/data/InboxMessage;

    check-cast p2, Lcom/pushwoosh/inbox/data/InboxMessage;

    invoke-virtual {p0, p1, p2}, Lcom/pushwoosh/inbox/ui/presentation/presenter/InboxPresenter$showList$1;->compare(Lcom/pushwoosh/inbox/data/InboxMessage;Lcom/pushwoosh/inbox/data/InboxMessage;)I

    move-result p1

    return p1
.end method
