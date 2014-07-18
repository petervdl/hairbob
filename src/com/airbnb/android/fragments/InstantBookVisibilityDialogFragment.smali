.class public Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment;
.super Lcom/airbnb/android/fragments/ZenDialog;
.source "InstantBookVisibilityDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment$InstantBookVisibilityArrayAdapter;
    }
.end annotation


# static fields
.field public static final LIST_SELECT_REQUEST_CODE:Ljava/lang/String; = "list_sel_req_code"

.field public static final PERSISTED_VISIBILITY:Ljava/lang/String; = "presisted_visibility"

.field public static final SELECTED_VISIBILITY:Ljava/lang/String; = "sel_visibility"


# instance fields
.field private mVisibilityAdapter:Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment$InstantBookVisibilityArrayAdapter;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/airbnb/android/fragments/ZenDialog;-><init>()V

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment;)Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment$InstantBookVisibilityArrayAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment;->mVisibilityAdapter:Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment$InstantBookVisibilityArrayAdapter;

    return-object v0
.end method

.method public static newInstance(Landroid/support/v4/app/Fragment;Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;I)Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment;
    .registers 7
    .param p0, "targetFragment"    # Landroid/support/v4/app/Fragment;
    .param p1, "preselectedVisibility"    # Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    .param p2, "persistedVisibility"    # Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    .param p3, "listSelectRequestCode"    # I

    .prologue
    .line 37
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "sel_visibility"

    iget-object v2, p1, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->mServerDescKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    const-string/jumbo v1, "presisted_visibility"

    iget-object v2, p2, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->mServerDescKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string/jumbo v1, "list_sel_req_code"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 42
    new-instance v1, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    new-instance v2, Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment;

    invoke-direct {v2}, Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment;-><init>()V

    invoke-direct {v1, v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;-><init>(Lcom/airbnb/android/fragments/ZenDialog;)V

    const v2, 0x7f0e04ee

    invoke-virtual {v1, v2}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTitle(I)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withTargetFragment(Landroid/support/v4/app/Fragment;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->withListView(Landroid/os/Bundle;)Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/ZenDialog$ZenBuilder;->create()Lcom/airbnb/android/fragments/ZenDialog;

    move-result-object v1

    check-cast v1, Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment;

    return-object v1
.end method


# virtual methods
.method protected getItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;
    .registers 2

    .prologue
    .line 58
    new-instance v0, Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment$1;-><init>(Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment;)V

    return-object v0
.end method

.method protected getListAdapter()Landroid/widget/ListAdapter;
    .registers 7

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "sel_visibility"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->getTypeFromKey(Ljava/lang/String;)Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    move-result-object v1

    .line 49
    .local v1, "preselectedVisibility":Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "presisted_visibility"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->getTypeFromKey(Ljava/lang/String;)Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;

    move-result-object v0

    .line 51
    .local v0, "persistedVisibility":Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;
    new-instance v2, Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment$InstantBookVisibilityArrayAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f03016d

    invoke-static {v0}, Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;->userFacingValues(Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment$InstantBookVisibilityArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/airbnb/android/interfaces/BaseListingTransitions$InstantBookVisibility;)V

    iput-object v2, p0, Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment;->mVisibilityAdapter:Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment$InstantBookVisibilityArrayAdapter;

    .line 53
    iget-object v2, p0, Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment;->mVisibilityAdapter:Lcom/airbnb/android/fragments/InstantBookVisibilityDialogFragment$InstantBookVisibilityArrayAdapter;

    return-object v2
.end method
