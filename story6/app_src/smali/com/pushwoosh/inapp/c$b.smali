.class Lcom/pushwoosh/inapp/c$b;
.super Lcom/pushwoosh/inapp/c$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/inapp/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lcom/pushwoosh/inapp/c;Lcom/pushwoosh/inapp/c$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/pushwoosh/inapp/c$d;-><init>(Lcom/pushwoosh/inapp/c;Lcom/pushwoosh/inapp/c$a;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Lcom/pushwoosh/inapp/e/b/b;
    .locals 0

    iget-object p1, p0, Lcom/pushwoosh/inapp/c$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/pushwoosh/inapp/c$d;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/pushwoosh/inapp/c;

    invoke-static {p1}, Lcom/pushwoosh/inapp/c;->c(Lcom/pushwoosh/inapp/c;)Lcom/pushwoosh/inapp/e/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/e/c;->b()Lcom/pushwoosh/inapp/e/b/b;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pushwoosh/inapp/c$b;->a([Ljava/lang/Void;)Lcom/pushwoosh/inapp/e/b/b;

    move-result-object p1

    return-object p1
.end method
