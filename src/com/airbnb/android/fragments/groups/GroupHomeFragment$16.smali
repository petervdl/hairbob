.class Lcom/airbnb/android/fragments/groups/GroupHomeFragment$16;
.super Ljava/lang/Object;
.source "GroupHomeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->updateHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)V
    .registers 2

    .prologue
    .line 796
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$16;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 800
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$16;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    # getter for: Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;
    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->access$100(Lcom/airbnb/android/fragments/groups/GroupHomeFragment;)Lcom/airbnb/android/models/groups/Group;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;->newInstance(Lcom/airbnb/android/models/groups/Group;)Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;

    move-result-object v0

    .line 801
    .local v0, "f":Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/GroupHomeFragment$16;->this$0:Lcom/airbnb/android/fragments/groups/GroupHomeFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/groups/GroupHomeFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/fragments/groups/GroupsPurposeDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 802
    return-void
.end method
