.class public Lcom/pushwoosh/richmedia/RichMediaManager;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRichMediaStyle()Lcom/pushwoosh/richmedia/RichMediaStyle;
    .locals 1

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->j()Lcom/pushwoosh/richmedia/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/pushwoosh/richmedia/a;->a()Lcom/pushwoosh/richmedia/RichMediaStyle;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static present(Lcom/pushwoosh/richmedia/RichMedia;)V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->j()Lcom/pushwoosh/richmedia/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/pushwoosh/richmedia/a;->a(Lcom/pushwoosh/richmedia/RichMedia;)V

    :cond_0
    return-void
.end method

.method public static setDelegate(Lcom/pushwoosh/richmedia/RichMediaPresentingDelegate;)V
    .locals 1

    invoke-static {}, Lcom/pushwoosh/q;->e()Lcom/pushwoosh/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pushwoosh/q;->j()Lcom/pushwoosh/richmedia/a;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/pushwoosh/richmedia/a;->a(Lcom/pushwoosh/richmedia/RichMediaPresentingDelegate;)V

    :cond_0
    return-void
.end method
