.class public Lcom/pushwoosh/inbox/e/a/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Lcom/pushwoosh/inbox/e/a/a;-><init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;Ljava/util/Collection;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/pushwoosh/inbox/e/a/a;->a:Ljava/util/Collection;

    if-nez p3, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p3

    :cond_1
    iput-object p3, p0, Lcom/pushwoosh/inbox/e/a/a;->d:Ljava/util/Map;

    if-nez p2, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p2

    :cond_2
    iput-object p2, p0, Lcom/pushwoosh/inbox/e/a/a;->b:Ljava/util/Collection;

    if-nez p4, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p4

    :cond_3
    iput-object p4, p0, Lcom/pushwoosh/inbox/e/a/a;->c:Ljava/util/Collection;

    return-void
.end method

.method public static a()Lcom/pushwoosh/inbox/e/a/a;
    .locals 5

    new-instance v0, Lcom/pushwoosh/inbox/e/a/a;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/pushwoosh/inbox/e/a/a;-><init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Map;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static b()Lcom/pushwoosh/inbox/e/a/a;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inbox/e/a/a;

    invoke-direct {v0}, Lcom/pushwoosh/inbox/e/a/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public c()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/inbox/e/a/a;->c:Ljava/util/Collection;

    return-object v0
.end method

.method public d()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/inbox/e/a/a;->a:Ljava/util/Collection;

    return-object v0
.end method

.method public e()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/pushwoosh/inbox/internal/data/InboxMessageStatus;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/inbox/e/a/a;->d:Ljava/util/Map;

    return-object v0
.end method

.method public f()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/pushwoosh/inbox/e/a/a;->b:Ljava/util/Collection;

    return-object v0
.end method
