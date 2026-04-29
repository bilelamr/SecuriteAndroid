.class Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->c(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;


# direct methods
.method constructor <init>(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a$4;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;

    iput-object p2, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a$4;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a$4;->b:Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;

    iget-object v1, p0, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a$4;->a:Landroid/content/Intent;

    invoke-static {v0, v1}, Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;->c(Lcom/pushwoosh/thirdpart/com/ironz/binaryprefs/c/a;Landroid/content/Intent;)V

    return-void
.end method
