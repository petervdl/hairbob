.class public Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment;
.super Lcom/airbnb/android/fragments/ZenDialog;
.source "InstantBookAdvanceNoticeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment$InstantBookAdvanceNoticeArrayAdapter;
    }
.end annotation


# static fields
.field public static final LIST_SELECT_REQUEST_CODE:Ljava/lang/String; = "list_sel_req_code"

.field public static final SELECTED_NOTICE:Ljava/lang/String; = "sel_notice"


# instance fields
.field private mNoticeAdapter:Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment$InstantBookAdvanceNoticeArrayAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ZenDialog;-><init>()V

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment;)Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment$InstantBookAdvanceNoticeArrayAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment;->mNoticeAdapter:Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment$InstantBookAdvanceNoticeArrayAdapter;

    return-object v0
.end method

.method public static newInstance(Landroid/support/v4/app/Fragment;Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;I)Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment;
    .registers 6
    .param p0, "targetFragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "preselectedNotice"    # Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;
    .param p2, "listSelectRequestCode"    # I

    .prologue
    .line 33
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 34
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "sel_notice"

    iget v2, p1, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->mServerDescKey:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 35
    const-string/jumbo v1, "list_sel_req_code"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 37
    new-instance v1, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    new-instance v2, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment;

    invoke-direct {v2}, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment;-><init>()V

    invoke-direct {v1, v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;-><init>(Lcom/airbnb/android/fragments/ZenDialog;)V

    const v2, 0x7f0e04e5

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withListView(Landroid/os/Bundle;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTargetFragment(Landroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment;

    return-object v1
.end method


# virtual methods
.method protected getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 52
    new-instance v0, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment$1;-><init>(Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment;)V

    return-object v0
.end method

.method protected getListAdapter()Landroid/widget/ListAdapter;
    .registers 7

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "sel_notice"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 45
    .local v0, "preselectedNotice":I
    new-instance v1, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment$InstantBookAdvanceNoticeArrayAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f03016d

    invoke-static {}, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->values()[Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    move-result-object v4

    invoke-static {v0}, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;->getTypeFromKey(I)Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment$InstantBookAdvanceNoticeArrayAdapter;-><init>(Landroid/content/Context;I[Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookAdvanceNotice;)V

    iput-object v1, p0, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment;->mNoticeAdapter:Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment$InstantBookAdvanceNoticeArrayAdapter;

    .line 47
    iget-object v1, p0, Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment;->mNoticeAdapter:Lcom/airbnb/android/fragments/InstantBookAdvanceNoticeDialogFragment$InstantBookAdvanceNoticeArrayAdapter;

    return-object v1
.end method
