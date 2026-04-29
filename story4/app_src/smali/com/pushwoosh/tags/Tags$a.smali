.class Lcom/pushwoosh/tags/Tags$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pushwoosh/tags/Tags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/pushwoosh/tags/TagsBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/pushwoosh/tags/TagsBundle$Builder;

    invoke-direct {v0}, Lcom/pushwoosh/tags/TagsBundle$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/pushwoosh/tags/TagsBundle$Builder;->build()Lcom/pushwoosh/tags/TagsBundle;

    move-result-object v0

    sput-object v0, Lcom/pushwoosh/tags/Tags$a;->a:Lcom/pushwoosh/tags/TagsBundle;

    return-void
.end method

.method static synthetic a()Lcom/pushwoosh/tags/TagsBundle;
    .locals 1

    sget-object v0, Lcom/pushwoosh/tags/Tags$a;->a:Lcom/pushwoosh/tags/TagsBundle;

    return-object v0
.end method
