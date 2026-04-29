.class public Lcom/pushwoosh/richmedia/RichMediaStyle;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pushwoosh/richmedia/RichMediaStyle$a;
    }
.end annotation


# instance fields
.field private backgroundColor:I

.field private loadingViewCreator:Lcom/pushwoosh/richmedia/RichMediaStyle$a;

.field private richMediaAnimation:Lcom/pushwoosh/richmedia/animation/RichMediaAnimation;

.field private timeOutBackButtonEnable:J


# direct methods
.method public constructor <init>(ILcom/pushwoosh/richmedia/animation/RichMediaAnimation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/pushwoosh/richmedia/RichMediaStyle;->backgroundColor:I

    iput-object p2, p0, Lcom/pushwoosh/richmedia/RichMediaStyle;->richMediaAnimation:Lcom/pushwoosh/richmedia/animation/RichMediaAnimation;

    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    iget v0, p0, Lcom/pushwoosh/richmedia/RichMediaStyle;->backgroundColor:I

    return v0
.end method

.method public getLoadingViewCreator()Lcom/pushwoosh/richmedia/RichMediaStyle$a;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/richmedia/RichMediaStyle;->loadingViewCreator:Lcom/pushwoosh/richmedia/RichMediaStyle$a;

    return-object v0
.end method

.method public getRichMediaAnimation()Lcom/pushwoosh/richmedia/animation/RichMediaAnimation;
    .locals 1

    iget-object v0, p0, Lcom/pushwoosh/richmedia/RichMediaStyle;->richMediaAnimation:Lcom/pushwoosh/richmedia/animation/RichMediaAnimation;

    return-object v0
.end method

.method public getTimeOutBackButtonEnable()J
    .locals 2

    iget-wide v0, p0, Lcom/pushwoosh/richmedia/RichMediaStyle;->timeOutBackButtonEnable:J

    return-wide v0
.end method

.method public setBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/pushwoosh/richmedia/RichMediaStyle;->backgroundColor:I

    return-void
.end method

.method public setLoadingViewCreator(Lcom/pushwoosh/richmedia/RichMediaStyle$a;)V
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/richmedia/RichMediaStyle;->loadingViewCreator:Lcom/pushwoosh/richmedia/RichMediaStyle$a;

    return-void
.end method

.method public setRichMediaAnimation(Lcom/pushwoosh/richmedia/animation/RichMediaAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/pushwoosh/richmedia/RichMediaStyle;->richMediaAnimation:Lcom/pushwoosh/richmedia/animation/RichMediaAnimation;

    return-void
.end method

.method public setTimeOutBackButtonEnable(J)V
    .locals 0

    iput-wide p1, p0, Lcom/pushwoosh/richmedia/RichMediaStyle;->timeOutBackButtonEnable:J

    return-void
.end method
