.class final synthetic Lcom/pushwoosh/richmedia/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/event/EventListener;


# instance fields
.field private final a:Lcom/pushwoosh/richmedia/a;


# direct methods
.method private constructor <init>(Lcom/pushwoosh/richmedia/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/richmedia/b;->a:Lcom/pushwoosh/richmedia/a;

    return-void
.end method

.method public static a(Lcom/pushwoosh/richmedia/a;)Lcom/pushwoosh/internal/event/EventListener;
    .locals 1

    new-instance v0, Lcom/pushwoosh/richmedia/b;

    invoke-direct {v0, p0}, Lcom/pushwoosh/richmedia/b;-><init>(Lcom/pushwoosh/richmedia/a;)V

    return-object v0
.end method


# virtual methods
.method public onReceive(Lcom/pushwoosh/internal/event/Event;)V
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/richmedia/b;->a:Lcom/pushwoosh/richmedia/a;

    check-cast p1, Lcom/pushwoosh/inapp/event/c;

    invoke-static {v0, p1}, Lcom/pushwoosh/richmedia/a;->a(Lcom/pushwoosh/richmedia/a;Lcom/pushwoosh/inapp/event/c;)V

    return-void
.end method
