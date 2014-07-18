.class public Lcom/airbnb/android/fragments/companion/CompanionHIWFragment;
.super Lcom/airbnb/android/fragments/AirFragment;
.source "CompanionHIWFragment.java"


# instance fields
.field mInterestsTextView:Lcom/airbnb/android/views/AirTextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/airbnb/android/fragments/AirFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    const v2, 0x7f030079

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 28
    .local v1, "view":Landroid/view/View;
    invoke-static {p0, v1}, Lbutterknife/ButterKnife;->inject(Ljava/lang/Object;Landroid/view/View;)V

    .line 30
    new-instance v0, Lcom/airbnb/android/fragments/companion/CompanionHIWFragment$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/companion/CompanionHIWFragment$1;-><init>(Lcom/airbnb/android/fragments/companion/CompanionHIWFragment;)V

    .line 46
    .local v0, "listener":Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;
    iget-object v3, p0, Lcom/airbnb/android/fragments/companion/CompanionHIWFragment;->mInterestsTextView:Lcom/airbnb/android/views/AirTextView;

    iget-object v2, p0, Lcom/airbnb/android/fragments/companion/CompanionHIWFragment;->mInterestsTextView:Lcom/airbnb/android/views/AirTextView;

    invoke-virtual {v2}, Lcom/airbnb/android/views/AirTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2, v0}, Lcom/airbnb/android/utils/ClickableLinkUtils;->setupClickableTextView(Landroid/widget/TextView;Ljava/lang/String;Lcom/airbnb/android/utils/ClickableLinkUtils$LinkOnClickListener;)V

    .line 48
    return-object v1
.end method
