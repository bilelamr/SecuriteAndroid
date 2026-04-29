.class final synthetic Lcom/pushwoosh/inbox/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/event/EventListener;


# static fields
.field private static final a:Lcom/pushwoosh/inbox/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/pushwoosh/inbox/b;

    invoke-direct {v0}, Lcom/pushwoosh/inbox/b;-><init>()V

    sput-object v0, Lcom/pushwoosh/inbox/b;->a:Lcom/pushwoosh/inbox/b;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/pushwoosh/internal/event/EventListener;
    .locals 1

    sget-object v0, Lcom/pushwoosh/inbox/b;->a:Lcom/pushwoosh/inbox/b;

    return-object v0
.end method


# virtual methods
.method public onReceive(Lcom/pushwoosh/internal/event/Event;)V
    .locals 0

    check-cast p1, Lcom/pushwoosh/internal/event/AppIdChangedEvent;

    invoke-static {p1}, Lcom/pushwoosh/inbox/PushwooshInboxPlugin;->a(Lcom/pushwoosh/internal/event/AppIdChangedEvent;)V

    return-void
.end method
