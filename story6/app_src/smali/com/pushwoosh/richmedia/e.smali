.class public Lcom/pushwoosh/richmedia/e;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/pushwoosh/inapp/e/b/b;)Lcom/pushwoosh/richmedia/RichMedia;
    .locals 1

    new-instance v0, Lcom/pushwoosh/inapp/view/b/a/b$a;

    invoke-direct {v0}, Lcom/pushwoosh/inapp/view/b/a/b$a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/pushwoosh/inapp/view/b/a/b$a;->a(Lcom/pushwoosh/inapp/e/b/b;)Lcom/pushwoosh/inapp/view/b/a/b$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/pushwoosh/inapp/view/b/a/b$a;->a()Lcom/pushwoosh/inapp/view/b/a/b;

    move-result-object p1

    new-instance v0, Lcom/pushwoosh/richmedia/RichMedia;

    invoke-direct {v0, p1}, Lcom/pushwoosh/richmedia/RichMedia;-><init>(Lcom/pushwoosh/inapp/view/b/a/b;)V

    return-object v0
.end method

.method a(Lcom/pushwoosh/inapp/view/b/a/b;)Lcom/pushwoosh/richmedia/RichMedia;
    .locals 1

    new-instance v0, Lcom/pushwoosh/richmedia/RichMedia;

    invoke-direct {v0, p1}, Lcom/pushwoosh/richmedia/RichMedia;-><init>(Lcom/pushwoosh/inapp/view/b/a/b;)V

    return-object v0
.end method
