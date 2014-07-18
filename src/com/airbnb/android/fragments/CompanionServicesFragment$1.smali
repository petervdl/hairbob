.class Lcom/airbnb/android/fragments/CompanionServicesFragment$1;
.super Ljava/lang/Object;
.source "CompanionServicesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/CompanionServicesFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/CompanionServicesFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/CompanionServicesFragment;)V
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lcom/airbnb/android/fragments/CompanionServicesFragment$1;->this$0:Lcom/airbnb/android/fragments/CompanionServicesFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
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
    .line 59
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/airbnb/android/fragments/CompanionServicesFragment$1;->this$0:Lcom/airbnb/android/fragments/CompanionServicesFragment;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/airbnb/android/fragments/CompanionServicesFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/airbnb/android/fragments/CompanionServicesFragment$1;->this$0:Lcom/airbnb/android/fragments/CompanionServicesFragment;

    # invokes: Lcom/airbnb/android/fragments/CompanionServicesFragment;->finishAndReturnResult(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/airbnb/android/fragments/CompanionServicesFragment;->access$100(Lcom/airbnb/android/fragments/CompanionServicesFragment;Ljava/lang/String;)V

    .line 61
    return-void
.end method
