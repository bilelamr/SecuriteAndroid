.class final synthetic Lcom/pushwoosh/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/event/EventListener;


# instance fields
.field private final a:Lcom/pushwoosh/s;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/z;->a:Lcom/pushwoosh/s;

    return-void
.end method

.method public static a(Lcom/pushwoosh/s;)Lcom/pushwoosh/internal/event/EventListener;
    .locals 1

    new-instance v0, Lcom/pushwoosh/z;

    invoke-direct {v0, p0}, Lcom/pushwoosh/z;-><init>(Lcom/pushwoosh/s;)V

    return-object v0
.end method


# virtual methods
.method public onReceive(Lcom/pushwoosh/internal/event/Event;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/z;->a:Lcom/pushwoosh/s;

    check-cast p1, Lcom/pushwoosh/internal/platform/a$a;

    invoke-static {v0, p1}, Lcom/pushwoosh/s;->a(Lcom/pushwoosh/s;Lcom/pushwoosh/internal/platform/a$a;)V

    return-void
.end method
