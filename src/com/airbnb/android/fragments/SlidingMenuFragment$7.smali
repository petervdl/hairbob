.class Lcom/airbnb/android/fragments/SlidingMenuFragment$7;
.super Ljava/lang/Object;
.source "SlidingMenuFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/SlidingMenuFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/SlidingMenuFragment;)V
    .registers 2

    .prologue
    .line 253
    iput-object p1, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$7;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 256
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    .line 257
    .local v0, "menuItem":Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;
    sget-object v1, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->Groups:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    invoke-virtual {v1, v0}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 258
    invoke-static {}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackNavClick()V

    .line 259
    sget-object v1, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;->LEFT_NAV:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    invoke-static {v1}, Lcom/airbnb/android/analytics/GroupsAnalytics;->setOrigin(Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;)V

    .line 261
    :cond_17
    iget-object v1, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$7;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    # getter for: Lcom/airbnb/android/fragments/SlidingMenuFragment;->mListener:Lcom/airbnb/android/fragments/SlidingMenuFragment$OnSlidingMenuItemSelectedListener;
    invoke-static {v1}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->access$100(Lcom/airbnb/android/fragments/SlidingMenuFragment;)Lcom/airbnb/android/fragments/SlidingMenuFragment$OnSlidingMenuItemSelectedListener;

    move-result-object v3

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->ordinal()I

    move-result v1

    int-to-long v4, v1

    iget-object v1, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$7;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->getCurrentMenuItem()Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    move-result-object v1

    if-ne v0, v1, :cond_30

    invoke-virtual {v0}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->shouldForceNewScreen()Z

    move-result v1

    if-eqz v1, :cond_40

    :cond_30
    const/4 v1, 0x1

    :goto_31
    invoke-interface {v3, v4, v5, v1, v2}, Lcom/airbnb/android/fragments/SlidingMenuFragment$OnSlidingMenuItemSelectedListener;->onItemSelected(JZZ)V

    .line 263
    invoke-virtual {v0}, Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;->shouldForceNewScreen()Z

    move-result v1

    if-nez v1, :cond_3f

    .line 264
    iget-object v1, p0, Lcom/airbnb/android/fragments/SlidingMenuFragment$7;->this$0:Lcom/airbnb/android/fragments/SlidingMenuFragment;

    # invokes: Lcom/airbnb/android/fragments/SlidingMenuFragment;->notifyDataSetChanged()V
    invoke-static {v1}, Lcom/airbnb/android/fragments/SlidingMenuFragment;->access$200(Lcom/airbnb/android/fragments/SlidingMenuFragment;)V

    .line 266
    :cond_3f
    return-void

    :cond_40
    move v1, v2

    .line 261
    goto :goto_31
.end method
