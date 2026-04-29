.class public Lcom/pushwoosh/inapp/event/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/event/Event;


# instance fields
.field private final a:Lcom/pushwoosh/inapp/e/b/b;


# direct methods
.method public constructor <init>(Lcom/pushwoosh/inapp/e/b/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/event/c;->a:Lcom/pushwoosh/inapp/e/b/b;

    return-void
.end method


# virtual methods
.method public a()Lcom/pushwoosh/inapp/e/b/b;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/event/c;->a:Lcom/pushwoosh/inapp/e/b/b;

    return-object v0
.end method
