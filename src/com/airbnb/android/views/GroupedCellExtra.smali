.class public Lcom/airbnb/android/views/GroupedCellExtra;
.super Lcom/airbnb/android/views/GroupedCell;
.source "GroupedCellExtra.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/airbnb/android/views/GroupedCellExtra;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0}, Lcom/airbnb/android/views/GroupedCellExtra;->init()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/airbnb/android/views/GroupedCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-direct {p0}, Lcom/airbnb/android/views/GroupedCellExtra;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/airbnb/android/views/GroupedCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0}, Lcom/airbnb/android/views/GroupedCellExtra;->init()V

    .line 31
    return-void
.end method

.method private init()V
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/GroupedCellExtra;->showRightCaret(Z)V

    .line 45
    return-void
.end method


# virtual methods
.method public getIcon()Landroid/view/View;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCellExtra;->mNextArrow:Landroid/view/View;

    return-object v0
.end method

.method public showRightCaret(Z)V
    .registers 4
    .param p1, "show"    # Z

    .prologue
    .line 49
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCellExtra;->mNextArrow:Landroid/view/View;

    if-nez v0, :cond_d

    .line 50
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "no right caret in this layout. is this a vertical grouped layout?"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_d
    iget-object v0, p0, Lcom/airbnb/android/views/GroupedCellExtra;->mNextArrow:Landroid/view/View;

    invoke-static {v0, p1}, Lcom/airbnb/android/utils/MiscUtils;->setVisibleIf(Landroid/view/View;Z)V

    .line 55
    return-void
.end method
