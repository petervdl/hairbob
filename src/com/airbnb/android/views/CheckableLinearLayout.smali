.class public Lcom/airbnb/android/views/CheckableLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CheckableLinearLayout.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private isChecked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/views/CheckableLinearLayout;->isChecked:Z

    .line 16
    invoke-direct {p0}, Lcom/airbnb/android/views/CheckableLinearLayout;->init()V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/views/CheckableLinearLayout;->isChecked:Z

    .line 21
    invoke-direct {p0}, Lcom/airbnb/android/views/CheckableLinearLayout;->init()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/airbnb/android/views/CheckableLinearLayout;->isChecked:Z

    .line 26
    invoke-direct {p0}, Lcom/airbnb/android/views/CheckableLinearLayout;->init()V

    .line 27
    return-void
.end method

.method private init()V
    .registers 2

    .prologue
    .line 30
    new-instance v0, Lcom/airbnb/android/views/CheckableLinearLayout$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/views/CheckableLinearLayout$1;-><init>(Lcom/airbnb/android/views/CheckableLinearLayout;)V

    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/CheckableLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    invoke-direct {p0}, Lcom/airbnb/android/views/CheckableLinearLayout;->updateState()V

    .line 39
    return-void
.end method

.method private updateState()V
    .registers 4

    .prologue
    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/airbnb/android/views/CheckableLinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_13

    .line 43
    invoke-virtual {p0, v0}, Lcom/airbnb/android/views/CheckableLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v2, p0, Lcom/airbnb/android/views/CheckableLinearLayout;->isChecked:Z

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 45
    :cond_13
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .registers 2

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/airbnb/android/views/CheckableLinearLayout;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .registers 2
    .param p1, "checked"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/airbnb/android/views/CheckableLinearLayout;->isChecked:Z

    .line 52
    invoke-direct {p0}, Lcom/airbnb/android/views/CheckableLinearLayout;->updateState()V

    .line 53
    return-void
.end method

.method public toggle()V
    .registers 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/airbnb/android/views/CheckableLinearLayout;->isChecked:Z

    if-nez v0, :cond_b

    const/4 v0, 0x1

    :goto_5
    iput-boolean v0, p0, Lcom/airbnb/android/views/CheckableLinearLayout;->isChecked:Z

    .line 63
    invoke-direct {p0}, Lcom/airbnb/android/views/CheckableLinearLayout;->updateState()V

    .line 64
    return-void

    .line 62
    :cond_b
    const/4 v0, 0x0

    goto :goto_5
.end method
