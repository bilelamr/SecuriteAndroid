.class final synthetic Lcom/pushwoosh/inbox/d/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inbox/d/f;->a:Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;

    return-void
.end method

.method public static a(Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inbox/d/f;

    invoke-direct {v0, p0}, Lcom/pushwoosh/inbox/d/f;-><init>(Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;)V

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inbox/d/f;->a:Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;

    invoke-static {v0}, Lcom/pushwoosh/inbox/d/b;->a(Lcom/pushwoosh/inbox/event/InboxMessagesUpdatedEvent;)V

    return-void
.end method
