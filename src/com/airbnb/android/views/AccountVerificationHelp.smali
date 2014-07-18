.class public Lcom/airbnb/android/views/AccountVerificationHelp;
.super Landroid/widget/LinearLayout;
.source "AccountVerificationHelp.java"


# instance fields
.field mContactTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lcom/airbnb/android/views/AccountVerificationHelp;->init()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    invoke-direct {p0}, Lcom/airbnb/android/views/AccountVerificationHelp;->init()V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-direct {p0}, Lcom/airbnb/android/views/AccountVerificationHelp;->init()V

    .line 34
    return-void
.end method

.method private init()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 37
    invoke-virtual {p0, v6}, Lcom/airbnb/android/views/AccountVerificationHelp;->setOrientation(I)V

    .line 38
    invoke-virtual {p0}, Lcom/airbnb/android/views/AccountVerificationHelp;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 39
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/high16 v5, 0x7f030000

    invoke-virtual {v4, v5, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    invoke-static {p0, p0}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 43
    const v4, 0x7f0e0036

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "email":Ljava/lang/String;
    const v4, 0x7f0e0035

    new-array v5, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "contactText":Ljava/lang/String;
    new-instance v3, Lcom/airbnb/android/views/AccountVerificationHelp$1;

    invoke-direct {v3, p0, v2, v1}, Lcom/airbnb/android/views/AccountVerificationHelp$1;-><init>(Lcom/airbnb/android/views/AccountVerificationHelp;Ljava/lang/String;Landroid/content/Context;)V

    .line 57
    .local v3, "listener":Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;
    iget-object v4, p0, Lcom/airbnb/android/views/AccountVerificationHelp;->mContactTextView:Landroid/widget/TextView;

    invoke-static {v4, v0, v3}, Lcom/airbnb/android/utils/ClickableLinkUtils;->setupClickableTextView(Landroid/widget/TextView;Ljava/lang/String;Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;)V

    .line 58
    return-void
.end method
