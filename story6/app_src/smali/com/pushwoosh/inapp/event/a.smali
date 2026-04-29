.class public Lcom/pushwoosh/inapp/event/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/pushwoosh/internal/event/Event;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/inapp/event/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/pushwoosh/inapp/e/b/b;

.field private final b:Lcom/pushwoosh/inapp/event/a$a;


# direct methods
.method public constructor <init>(Lcom/pushwoosh/inapp/event/a$a;Lcom/pushwoosh/inapp/e/b/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/pushwoosh/inapp/event/a;->b:Lcom/pushwoosh/inapp/event/a$a;

    iput-object p2, p0, Lcom/pushwoosh/inapp/event/a;->a:Lcom/pushwoosh/inapp/e/b/b;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/event/a;->a:Lcom/pushwoosh/inapp/e/b/b;

    invoke-virtual {v0}, Lcom/pushwoosh/inapp/e/b/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/pushwoosh/inapp/event/a$a;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/inapp/event/a;->b:Lcom/pushwoosh/inapp/event/a$a;

    return-object v0
.end method
