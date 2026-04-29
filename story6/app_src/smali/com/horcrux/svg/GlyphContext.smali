.class Lcom/horcrux/svg/GlyphContext;
.super Ljava/lang/Object;
.source "GlyphContext.java"


# instance fields
.field private mDX:D

.field private mDXIndex:I

.field private final mDXIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDXs:[Lcom/horcrux/svg/SVGLength;

.field private final mDXsContext:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Lcom/horcrux/svg/SVGLength;",
            ">;"
        }
    .end annotation
.end field

.field private mDXsIndex:I

.field private final mDXsIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDY:D

.field private mDYIndex:I

.field private final mDYIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDYs:[Lcom/horcrux/svg/SVGLength;

.field private final mDYsContext:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Lcom/horcrux/svg/SVGLength;",
            ">;"
        }
    .end annotation
.end field

.field private mDYsIndex:I

.field private final mDYsIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final mFontContext:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/FontData;",
            ">;"
        }
    .end annotation
.end field

.field private mFontSize:D

.field private final mHeight:F

.field private mRIndex:I

.field private final mRIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRs:[D

.field private final mRsContext:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[D>;"
        }
    .end annotation
.end field

.field private mRsIndex:I

.field private final mRsIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mScale:F

.field private mTop:I

.field private final mWidth:F

.field private mX:D

.field private mXIndex:I

.field private final mXIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mXs:[Lcom/horcrux/svg/SVGLength;

.field private final mXsContext:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Lcom/horcrux/svg/SVGLength;",
            ">;"
        }
    .end annotation
.end field

.field private mXsIndex:I

.field private final mXsIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mY:D

.field private mYIndex:I

.field private final mYIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mYs:[Lcom/horcrux/svg/SVGLength;

.field private final mYsContext:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[",
            "Lcom/horcrux/svg/SVGLength;",
            ">;"
        }
    .end annotation
.end field

.field private mYsIndex:I

.field private final mYsIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private topFont:Lcom/horcrux/svg/FontData;


# direct methods
.method constructor <init>(FFF)V
    .locals 4

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mFontContext:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mXsContext:Ljava/util/ArrayList;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mYsContext:Ljava/util/ArrayList;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDXsContext:Ljava/util/ArrayList;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDYsContext:Ljava/util/ArrayList;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mRsContext:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mXIndices:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mYIndices:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDXIndices:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDYIndices:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mRIndices:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mXsIndices:Ljava/util/ArrayList;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mYsIndices:Ljava/util/ArrayList;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDXsIndices:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDYsIndices:Ljava/util/ArrayList;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mRsIndices:Ljava/util/ArrayList;

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    .line 46
    iput-wide v0, p0, Lcom/horcrux/svg/GlyphContext;->mFontSize:D

    .line 47
    sget-object v0, Lcom/horcrux/svg/FontData;->Defaults:Lcom/horcrux/svg/FontData;

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->topFont:Lcom/horcrux/svg/FontData;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/horcrux/svg/SVGLength;

    .line 64
    iput-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mXs:[Lcom/horcrux/svg/SVGLength;

    new-array v1, v0, [Lcom/horcrux/svg/SVGLength;

    .line 67
    iput-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mYs:[Lcom/horcrux/svg/SVGLength;

    new-array v1, v0, [Lcom/horcrux/svg/SVGLength;

    .line 73
    iput-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mDXs:[Lcom/horcrux/svg/SVGLength;

    new-array v1, v0, [Lcom/horcrux/svg/SVGLength;

    .line 76
    iput-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mDYs:[Lcom/horcrux/svg/SVGLength;

    const/4 v1, 0x1

    new-array v1, v1, [D

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 82
    iput-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mRs:[D

    const/4 v0, -0x1

    .line 92
    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mXIndex:I

    .line 93
    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mYIndex:I

    .line 94
    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mDXIndex:I

    .line 95
    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mDYIndex:I

    .line 96
    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mRIndex:I

    .line 115
    iput p1, p0, Lcom/horcrux/svg/GlyphContext;->mScale:F

    .line 116
    iput p2, p0, Lcom/horcrux/svg/GlyphContext;->mWidth:F

    .line 117
    iput p3, p0, Lcom/horcrux/svg/GlyphContext;->mHeight:F

    .line 119
    iget-object p1, p0, Lcom/horcrux/svg/GlyphContext;->mXsContext:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/horcrux/svg/GlyphContext;->mXs:[Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object p1, p0, Lcom/horcrux/svg/GlyphContext;->mYsContext:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/horcrux/svg/GlyphContext;->mYs:[Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object p1, p0, Lcom/horcrux/svg/GlyphContext;->mDXsContext:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/horcrux/svg/GlyphContext;->mDXs:[Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object p1, p0, Lcom/horcrux/svg/GlyphContext;->mDYsContext:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/horcrux/svg/GlyphContext;->mDYs:[Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object p1, p0, Lcom/horcrux/svg/GlyphContext;->mRsContext:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/horcrux/svg/GlyphContext;->mRs:[D

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object p1, p0, Lcom/horcrux/svg/GlyphContext;->mXIndices:Ljava/util/ArrayList;

    iget p2, p0, Lcom/horcrux/svg/GlyphContext;->mXIndex:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object p1, p0, Lcom/horcrux/svg/GlyphContext;->mYIndices:Ljava/util/ArrayList;

    iget p2, p0, Lcom/horcrux/svg/GlyphContext;->mYIndex:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object p1, p0, Lcom/horcrux/svg/GlyphContext;->mDXIndices:Ljava/util/ArrayList;

    iget p2, p0, Lcom/horcrux/svg/GlyphContext;->mDXIndex:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object p1, p0, Lcom/horcrux/svg/GlyphContext;->mDYIndices:Ljava/util/ArrayList;

    iget p2, p0, Lcom/horcrux/svg/GlyphContext;->mDYIndex:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object p1, p0, Lcom/horcrux/svg/GlyphContext;->mRIndices:Ljava/util/ArrayList;

    iget p2, p0, Lcom/horcrux/svg/GlyphContext;->mRIndex:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object p1, p0, Lcom/horcrux/svg/GlyphContext;->mFontContext:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/horcrux/svg/GlyphContext;->topFont:Lcom/horcrux/svg/FontData;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    invoke-direct {p0}, Lcom/horcrux/svg/GlyphContext;->pushIndices()V

    return-void
.end method

.method private getDoubleArrayFromReadableArray(Ljava/util/ArrayList;)[D
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/SVGLength;",
            ">;)[D"
        }
    .end annotation

    .line 195
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 196
    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 198
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/horcrux/svg/SVGLength;

    .line 199
    iget-wide v3, v3, Lcom/horcrux/svg/SVGLength;->value:D

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getStringArrayFromReadableArray(Ljava/util/ArrayList;)[Lcom/horcrux/svg/SVGLength;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/SVGLength;",
            ">;)[",
            "Lcom/horcrux/svg/SVGLength;"
        }
    .end annotation

    .line 186
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 187
    new-array v1, v0, [Lcom/horcrux/svg/SVGLength;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 189
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/horcrux/svg/SVGLength;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getTopOrParentFont(Lcom/horcrux/svg/GroupView;)Lcom/horcrux/svg/FontData;
    .locals 2

    .line 147
    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    if-lez v0, :cond_0

    .line 148
    iget-object p1, p0, Lcom/horcrux/svg/GlyphContext;->topFont:Lcom/horcrux/svg/FontData;

    return-object p1

    .line 150
    :cond_0
    invoke-virtual {p1}, Lcom/horcrux/svg/VirtualView;->getParentTextRoot()Lcom/horcrux/svg/GroupView;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 153
    invoke-virtual {p1}, Lcom/horcrux/svg/GroupView;->getGlyphContext()Lcom/horcrux/svg/GlyphContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/horcrux/svg/GlyphContext;->getFont()Lcom/horcrux/svg/FontData;

    move-result-object v0

    .line 154
    sget-object v1, Lcom/horcrux/svg/FontData;->Defaults:Lcom/horcrux/svg/FontData;

    if-eq v0, v1, :cond_1

    return-object v0

    .line 157
    :cond_1
    invoke-virtual {p1}, Lcom/horcrux/svg/VirtualView;->getParentTextRoot()Lcom/horcrux/svg/GroupView;

    move-result-object p1

    goto :goto_0

    .line 160
    :cond_2
    sget-object p1, Lcom/horcrux/svg/FontData;->Defaults:Lcom/horcrux/svg/FontData;

    return-object p1
.end method

.method private static incrementIndices(Ljava/util/ArrayList;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    :goto_0
    if-ltz p1, :cond_0

    .line 315
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 316
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private pushIndices()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mXsIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mXsIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mYsIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mYsIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDXsIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mDXsIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDYsIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mDYsIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mRsIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mRsIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private pushNodeAndFont(Lcom/horcrux/svg/GroupView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 3

    .line 165
    invoke-direct {p0, p1}, Lcom/horcrux/svg/GlyphContext;->getTopOrParentFont(Lcom/horcrux/svg/GroupView;)Lcom/horcrux/svg/FontData;

    move-result-object p1

    .line 166
    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    if-nez p2, :cond_0

    .line 169
    iget-object p2, p0, Lcom/horcrux/svg/GlyphContext;->mFontContext:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 173
    :cond_0
    new-instance v0, Lcom/horcrux/svg/FontData;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mScale:F

    float-to-double v1, v1

    invoke-direct {v0, p2, p1, v1, v2}, Lcom/horcrux/svg/FontData;-><init>(Lcom/facebook/react/bridge/ReadableMap;Lcom/horcrux/svg/FontData;D)V

    .line 174
    iget-wide p1, v0, Lcom/horcrux/svg/FontData;->fontSize:D

    iput-wide p1, p0, Lcom/horcrux/svg/GlyphContext;->mFontSize:D

    .line 175
    iget-object p1, p0, Lcom/horcrux/svg/GlyphContext;->mFontContext:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->topFont:Lcom/horcrux/svg/FontData;

    return-void
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    .line 137
    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mRsIndex:I

    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mDYsIndex:I

    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mDXsIndex:I

    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mYsIndex:I

    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mXsIndex:I

    const/4 v0, -0x1

    .line 138
    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mRIndex:I

    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mDYIndex:I

    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mDXIndex:I

    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mYIndex:I

    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mXIndex:I

    const-wide/16 v0, 0x0

    .line 139
    iput-wide v0, p0, Lcom/horcrux/svg/GlyphContext;->mDY:D

    iput-wide v0, p0, Lcom/horcrux/svg/GlyphContext;->mDX:D

    iput-wide v0, p0, Lcom/horcrux/svg/GlyphContext;->mY:D

    iput-wide v0, p0, Lcom/horcrux/svg/GlyphContext;->mX:D

    return-void
.end method


# virtual methods
.method getFont()Lcom/horcrux/svg/FontData;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->topFont:Lcom/horcrux/svg/FontData;

    return-object v0
.end method

.method getFontSize()D
    .locals 2

    .line 352
    iget-wide v0, p0, Lcom/horcrux/svg/GlyphContext;->mFontSize:D

    return-wide v0
.end method

.method getHeight()F
    .locals 1

    .line 426
    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mHeight:F

    return v0
.end method

.method getWidth()F
    .locals 1

    .line 422
    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mWidth:F

    return v0
.end method

.method nextDeltaX()D
    .locals 12

    .line 386
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDXIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mDXsIndex:I

    invoke-static {v0, v1}, Lcom/horcrux/svg/GlyphContext;->incrementIndices(Ljava/util/ArrayList;I)V

    .line 388
    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mDXIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 389
    iget-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mDXs:[Lcom/horcrux/svg/SVGLength;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 390
    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mDXIndex:I

    .line 391
    aget-object v3, v1, v0

    .line 392
    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mWidth:F

    float-to-double v4, v0

    const-wide/16 v6, 0x0

    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mScale:F

    float-to-double v8, v0

    iget-wide v10, p0, Lcom/horcrux/svg/GlyphContext;->mFontSize:D

    invoke-static/range {v3 .. v11}, Lcom/horcrux/svg/PropHelper;->fromRelative(Lcom/horcrux/svg/SVGLength;DDDD)D

    move-result-wide v0

    .line 393
    iget-wide v2, p0, Lcom/horcrux/svg/GlyphContext;->mDX:D

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcom/horcrux/svg/GlyphContext;->mDX:D

    .line 396
    :cond_0
    iget-wide v0, p0, Lcom/horcrux/svg/GlyphContext;->mDX:D

    return-wide v0
.end method

.method nextDeltaY()D
    .locals 12

    .line 400
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDYIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mDYsIndex:I

    invoke-static {v0, v1}, Lcom/horcrux/svg/GlyphContext;->incrementIndices(Ljava/util/ArrayList;I)V

    .line 402
    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mDYIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 403
    iget-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mDYs:[Lcom/horcrux/svg/SVGLength;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 404
    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mDYIndex:I

    .line 405
    aget-object v3, v1, v0

    .line 406
    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mHeight:F

    float-to-double v4, v0

    const-wide/16 v6, 0x0

    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mScale:F

    float-to-double v8, v0

    iget-wide v10, p0, Lcom/horcrux/svg/GlyphContext;->mFontSize:D

    invoke-static/range {v3 .. v11}, Lcom/horcrux/svg/PropHelper;->fromRelative(Lcom/horcrux/svg/SVGLength;DDDD)D

    move-result-wide v0

    .line 407
    iget-wide v2, p0, Lcom/horcrux/svg/GlyphContext;->mDY:D

    add-double/2addr v2, v0

    iput-wide v2, p0, Lcom/horcrux/svg/GlyphContext;->mDY:D

    .line 410
    :cond_0
    iget-wide v0, p0, Lcom/horcrux/svg/GlyphContext;->mDY:D

    return-wide v0
.end method

.method nextRotation()D
    .locals 3

    .line 414
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mRIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mRsIndex:I

    invoke-static {v0, v1}, Lcom/horcrux/svg/GlyphContext;->incrementIndices(Ljava/util/ArrayList;I)V

    .line 416
    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mRIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mRs:[D

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mRIndex:I

    .line 418
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mRs:[D

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mRIndex:I

    aget-wide v1, v0, v1

    return-wide v1
.end method

.method nextX(D)D
    .locals 13

    .line 356
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mXIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mXsIndex:I

    invoke-static {v0, v1}, Lcom/horcrux/svg/GlyphContext;->incrementIndices(Ljava/util/ArrayList;I)V

    .line 358
    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mXIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 359
    iget-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mXs:[Lcom/horcrux/svg/SVGLength;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const-wide/16 v2, 0x0

    .line 360
    iput-wide v2, p0, Lcom/horcrux/svg/GlyphContext;->mDX:D

    .line 361
    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mXIndex:I

    .line 362
    aget-object v4, v1, v0

    .line 363
    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mWidth:F

    float-to-double v5, v0

    const-wide/16 v7, 0x0

    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mScale:F

    float-to-double v9, v0

    iget-wide v11, p0, Lcom/horcrux/svg/GlyphContext;->mFontSize:D

    invoke-static/range {v4 .. v12}, Lcom/horcrux/svg/PropHelper;->fromRelative(Lcom/horcrux/svg/SVGLength;DDDD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/horcrux/svg/GlyphContext;->mX:D

    .line 366
    :cond_0
    iget-wide v0, p0, Lcom/horcrux/svg/GlyphContext;->mX:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/horcrux/svg/GlyphContext;->mX:D

    .line 368
    iget-wide p1, p0, Lcom/horcrux/svg/GlyphContext;->mX:D

    return-wide p1
.end method

.method nextY()D
    .locals 13

    .line 372
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mYIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mYsIndex:I

    invoke-static {v0, v1}, Lcom/horcrux/svg/GlyphContext;->incrementIndices(Ljava/util/ArrayList;I)V

    .line 374
    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mYIndex:I

    add-int/lit8 v0, v0, 0x1

    .line 375
    iget-object v1, p0, Lcom/horcrux/svg/GlyphContext;->mYs:[Lcom/horcrux/svg/SVGLength;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const-wide/16 v2, 0x0

    .line 376
    iput-wide v2, p0, Lcom/horcrux/svg/GlyphContext;->mDY:D

    .line 377
    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mYIndex:I

    .line 378
    aget-object v4, v1, v0

    .line 379
    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mHeight:F

    float-to-double v5, v0

    const-wide/16 v7, 0x0

    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mScale:F

    float-to-double v9, v0

    iget-wide v11, p0, Lcom/horcrux/svg/GlyphContext;->mFontSize:D

    invoke-static/range {v4 .. v12}, Lcom/horcrux/svg/PropHelper;->fromRelative(Lcom/horcrux/svg/SVGLength;DDDD)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/horcrux/svg/GlyphContext;->mY:D

    .line 382
    :cond_0
    iget-wide v0, p0, Lcom/horcrux/svg/GlyphContext;->mY:D

    return-wide v0
.end method

.method popContext()V
    .locals 7

    .line 264
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mFontContext:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 265
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mXsIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 266
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mYsIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 267
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDXsIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 268
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDYsIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 269
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mRsIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 271
    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    .line 273
    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mXsIndex:I

    .line 274
    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mYsIndex:I

    .line 275
    iget v2, p0, Lcom/horcrux/svg/GlyphContext;->mDXsIndex:I

    .line 276
    iget v3, p0, Lcom/horcrux/svg/GlyphContext;->mDYsIndex:I

    .line 277
    iget v4, p0, Lcom/horcrux/svg/GlyphContext;->mRsIndex:I

    .line 279
    iget-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mFontContext:Ljava/util/ArrayList;

    iget v6, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/horcrux/svg/FontData;

    iput-object v5, p0, Lcom/horcrux/svg/GlyphContext;->topFont:Lcom/horcrux/svg/FontData;

    .line 280
    iget-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mXsIndices:Ljava/util/ArrayList;

    iget v6, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/horcrux/svg/GlyphContext;->mXsIndex:I

    .line 281
    iget-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mYsIndices:Ljava/util/ArrayList;

    iget v6, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/horcrux/svg/GlyphContext;->mYsIndex:I

    .line 282
    iget-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mDXsIndices:Ljava/util/ArrayList;

    iget v6, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/horcrux/svg/GlyphContext;->mDXsIndex:I

    .line 283
    iget-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mDYsIndices:Ljava/util/ArrayList;

    iget v6, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/horcrux/svg/GlyphContext;->mDYsIndex:I

    .line 284
    iget-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mRsIndices:Ljava/util/ArrayList;

    iget v6, p0, Lcom/horcrux/svg/GlyphContext;->mTop:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/horcrux/svg/GlyphContext;->mRsIndex:I

    .line 286
    iget v5, p0, Lcom/horcrux/svg/GlyphContext;->mXsIndex:I

    if-eq v0, v5, :cond_0

    .line 287
    iget-object v5, p0, Lcom/horcrux/svg/GlyphContext;->mXsContext:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 288
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mXsContext:Ljava/util/ArrayList;

    iget v5, p0, Lcom/horcrux/svg/GlyphContext;->mXsIndex:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/horcrux/svg/SVGLength;

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mXs:[Lcom/horcrux/svg/SVGLength;

    .line 289
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mXIndices:Ljava/util/ArrayList;

    iget v5, p0, Lcom/horcrux/svg/GlyphContext;->mXsIndex:I

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mXIndex:I

    .line 291
    :cond_0
    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mYsIndex:I

    if-eq v1, v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mYsContext:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 293
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mYsContext:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mYsIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/horcrux/svg/SVGLength;

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mYs:[Lcom/horcrux/svg/SVGLength;

    .line 294
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mYIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mYsIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mYIndex:I

    .line 296
    :cond_1
    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mDXsIndex:I

    if-eq v2, v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDXsContext:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 298
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDXsContext:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mDXsIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/horcrux/svg/SVGLength;

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDXs:[Lcom/horcrux/svg/SVGLength;

    .line 299
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDXIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mDXsIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mDXIndex:I

    .line 301
    :cond_2
    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mDYsIndex:I

    if-eq v3, v0, :cond_3

    .line 302
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDYsContext:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 303
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDYsContext:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mDYsIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/horcrux/svg/SVGLength;

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDYs:[Lcom/horcrux/svg/SVGLength;

    .line 304
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mDYIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mDYsIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mDYIndex:I

    .line 306
    :cond_3
    iget v0, p0, Lcom/horcrux/svg/GlyphContext;->mRsIndex:I

    if-eq v4, v0, :cond_4

    .line 307
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mRsContext:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 308
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mRsContext:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mRsIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mRs:[D

    .line 309
    iget-object v0, p0, Lcom/horcrux/svg/GlyphContext;->mRIndices:Ljava/util/ArrayList;

    iget v1, p0, Lcom/horcrux/svg/GlyphContext;->mRsIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/horcrux/svg/GlyphContext;->mRIndex:I

    :cond_4
    return-void
.end method

.method pushContext(Lcom/horcrux/svg/GroupView;Lcom/facebook/react/bridge/ReadableMap;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1, p2}, Lcom/horcrux/svg/GlyphContext;->pushNodeAndFont(Lcom/horcrux/svg/GroupView;Lcom/facebook/react/bridge/ReadableMap;)V

    .line 182
    invoke-direct {p0}, Lcom/horcrux/svg/GlyphContext;->pushIndices()V

    return-void
.end method

.method pushContext(ZLcom/horcrux/svg/TextView;Lcom/facebook/react/bridge/ReadableMap;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/horcrux/svg/TextView;",
            "Lcom/facebook/react/bridge/ReadableMap;",
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/SVGLength;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/SVGLength;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/SVGLength;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/SVGLength;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/horcrux/svg/SVGLength;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/horcrux/svg/GlyphContext;->reset()V

    .line 218
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/horcrux/svg/GlyphContext;->pushNodeAndFont(Lcom/horcrux/svg/GroupView;Lcom/facebook/react/bridge/ReadableMap;)V

    const/4 p1, -0x1

    if-eqz p4, :cond_1

    .line 220
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eqz p2, :cond_1

    .line 221
    iget p2, p0, Lcom/horcrux/svg/GlyphContext;->mXsIndex:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/horcrux/svg/GlyphContext;->mXsIndex:I

    .line 222
    iput p1, p0, Lcom/horcrux/svg/GlyphContext;->mXIndex:I

    .line 223
    iget-object p2, p0, Lcom/horcrux/svg/GlyphContext;->mXIndices:Ljava/util/ArrayList;

    iget p3, p0, Lcom/horcrux/svg/GlyphContext;->mXIndex:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    invoke-direct {p0, p4}, Lcom/horcrux/svg/GlyphContext;->getStringArrayFromReadableArray(Ljava/util/ArrayList;)[Lcom/horcrux/svg/SVGLength;

    move-result-object p2

    iput-object p2, p0, Lcom/horcrux/svg/GlyphContext;->mXs:[Lcom/horcrux/svg/SVGLength;

    .line 225
    iget-object p2, p0, Lcom/horcrux/svg/GlyphContext;->mXsContext:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/horcrux/svg/GlyphContext;->mXs:[Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz p5, :cond_2

    .line 228
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eqz p2, :cond_2

    .line 229
    iget p2, p0, Lcom/horcrux/svg/GlyphContext;->mYsIndex:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/horcrux/svg/GlyphContext;->mYsIndex:I

    .line 230
    iput p1, p0, Lcom/horcrux/svg/GlyphContext;->mYIndex:I

    .line 231
    iget-object p2, p0, Lcom/horcrux/svg/GlyphContext;->mYIndices:Ljava/util/ArrayList;

    iget p3, p0, Lcom/horcrux/svg/GlyphContext;->mYIndex:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    invoke-direct {p0, p5}, Lcom/horcrux/svg/GlyphContext;->getStringArrayFromReadableArray(Ljava/util/ArrayList;)[Lcom/horcrux/svg/SVGLength;

    move-result-object p2

    iput-object p2, p0, Lcom/horcrux/svg/GlyphContext;->mYs:[Lcom/horcrux/svg/SVGLength;

    .line 233
    iget-object p2, p0, Lcom/horcrux/svg/GlyphContext;->mYsContext:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/horcrux/svg/GlyphContext;->mYs:[Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p6, :cond_3

    .line 236
    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eqz p2, :cond_3

    .line 237
    iget p2, p0, Lcom/horcrux/svg/GlyphContext;->mDXsIndex:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/horcrux/svg/GlyphContext;->mDXsIndex:I

    .line 238
    iput p1, p0, Lcom/horcrux/svg/GlyphContext;->mDXIndex:I

    .line 239
    iget-object p2, p0, Lcom/horcrux/svg/GlyphContext;->mDXIndices:Ljava/util/ArrayList;

    iget p3, p0, Lcom/horcrux/svg/GlyphContext;->mDXIndex:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    invoke-direct {p0, p6}, Lcom/horcrux/svg/GlyphContext;->getStringArrayFromReadableArray(Ljava/util/ArrayList;)[Lcom/horcrux/svg/SVGLength;

    move-result-object p2

    iput-object p2, p0, Lcom/horcrux/svg/GlyphContext;->mDXs:[Lcom/horcrux/svg/SVGLength;

    .line 241
    iget-object p2, p0, Lcom/horcrux/svg/GlyphContext;->mDXsContext:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/horcrux/svg/GlyphContext;->mDXs:[Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p7, :cond_4

    .line 244
    invoke-virtual {p7}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eqz p2, :cond_4

    .line 245
    iget p2, p0, Lcom/horcrux/svg/GlyphContext;->mDYsIndex:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/horcrux/svg/GlyphContext;->mDYsIndex:I

    .line 246
    iput p1, p0, Lcom/horcrux/svg/GlyphContext;->mDYIndex:I

    .line 247
    iget-object p2, p0, Lcom/horcrux/svg/GlyphContext;->mDYIndices:Ljava/util/ArrayList;

    iget p3, p0, Lcom/horcrux/svg/GlyphContext;->mDYIndex:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-direct {p0, p7}, Lcom/horcrux/svg/GlyphContext;->getStringArrayFromReadableArray(Ljava/util/ArrayList;)[Lcom/horcrux/svg/SVGLength;

    move-result-object p2

    iput-object p2, p0, Lcom/horcrux/svg/GlyphContext;->mDYs:[Lcom/horcrux/svg/SVGLength;

    .line 249
    iget-object p2, p0, Lcom/horcrux/svg/GlyphContext;->mDYsContext:Ljava/util/ArrayList;

    iget-object p3, p0, Lcom/horcrux/svg/GlyphContext;->mDYs:[Lcom/horcrux/svg/SVGLength;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz p8, :cond_5

    .line 252
    invoke-virtual {p8}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eqz p2, :cond_5

    .line 253
    iget p2, p0, Lcom/horcrux/svg/GlyphContext;->mRsIndex:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/horcrux/svg/GlyphContext;->mRsIndex:I

    .line 254
    iput p1, p0, Lcom/horcrux/svg/GlyphContext;->mRIndex:I

    .line 255
    iget-object p1, p0, Lcom/horcrux/svg/GlyphContext;->mRIndices:Ljava/util/ArrayList;

    iget p2, p0, Lcom/horcrux/svg/GlyphContext;->mRIndex:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    invoke-direct {p0, p8}, Lcom/horcrux/svg/GlyphContext;->getDoubleArrayFromReadableArray(Ljava/util/ArrayList;)[D

    move-result-object p1

    iput-object p1, p0, Lcom/horcrux/svg/GlyphContext;->mRs:[D

    .line 257
    iget-object p1, p0, Lcom/horcrux/svg/GlyphContext;->mRsContext:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/horcrux/svg/GlyphContext;->mRs:[D

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    :cond_5
    invoke-direct {p0}, Lcom/horcrux/svg/GlyphContext;->pushIndices()V

    return-void
.end method
