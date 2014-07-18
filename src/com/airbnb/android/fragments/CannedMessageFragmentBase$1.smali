.class Lcom/airbnb/android/fragments/CannedMessageFragmentBase$1;
.super Ljava/lang/Object;
.source "CannedMessageFragmentBase.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->setupCannedMessageAdapter(Landroid/view/View;Lcom/airbnb/android/models/User;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/CannedMessageFragmentBase;)V
    .registers 2

    .prologue
    .line 112
    iput-object p1, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$1;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 7
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
    .line 116
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$1;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    invoke-virtual {v0, p3}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->displayAddNewMsg(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 118
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$1;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    invoke-virtual {v0, p3}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->saveNewCannedMessage(I)V

    .line 123
    :goto_d
    return-void

    .line 121
    :cond_e
    iget-object v0, p0, Lcom/airbnb/android/fragments/CannedMessageFragmentBase$1;->this$0:Lcom/airbnb/android/fragments/CannedMessageFragmentBase;

    invoke-virtual {v0, p3}, Lcom/airbnb/android/fragments/CannedMessageFragmentBase;->appendCannedMessageToInput(I)V

    goto :goto_d
.end method
