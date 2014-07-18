.class public Lcom/airbnb/android/fragments/ArrivalAssistantTermsDialogFragment;
.super Lcom/airbnb/android/fragments/ZenDialog;
.source "ArrivalAssistantTermsDialogFragment.java"


# static fields
.field public static final ACCEPT_TERMS_REQUEST_CODE:I = 0x3e9


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ZenDialog;-><init>()V

    return-void
.end method

.method public static newInstance()Lcom/airbnb/android/fragments/ArrivalAssistantTermsDialogFragment;
    .registers 7

    .prologue
    .line 17
    new-instance v0, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    new-instance v1, Lcom/airbnb/android/fragments/ArrivalAssistantTermsDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/ArrivalAssistantTermsDialogFragment;-><init>()V

    invoke-direct {v0, v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;-><init>(Lcom/airbnb/android/fragments/ZenDialog;)V

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withCustomLayout()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    const v1, 0x7f0e00b0

    const/4 v2, 0x0

    const v3, 0x7f0e002f

    const/16 v4, 0x3e9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withDualButton(IIIILandroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withSwipeToDismiss()Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v6

    check-cast v6, Lcom/airbnb/android/fragments/ArrivalAssistantTermsDialogFragment;

    .line 19
    .local v6, "dialogFragment":Lcom/airbnb/android/fragments/ArrivalAssistantTermsDialogFragment;
    return-object v6
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1, p2, p3}, Lcom/airbnb/android/fragments/ZenDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v1

    .line 26
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f03003f

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 28
    .local v0, "content":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/airbnb/android/fragments/ArrivalAssistantTermsDialogFragment;->setCustomView(Landroid/view/View;)V

    .line 30
    return-object v1
.end method
