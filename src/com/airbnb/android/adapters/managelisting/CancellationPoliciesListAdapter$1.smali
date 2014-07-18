.class Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter$1;
.super Ljava/lang/Object;
.source "CancellationPoliciesListAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter;

.field final synthetic val$viewHolder:Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter;Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter$ViewHolder;)V
    .registers 3

    .prologue
    .line 55
    iput-object p1, p0, Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter$1;->this$0:Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter;

    iput-object p2, p0, Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter$1;->val$viewHolder:Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "arg0"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter$1;->val$viewHolder:Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter$ViewHolder;

    iget-object v0, v0, Lcom/airbnb/android/adapters/managelisting/CancellationPoliciesListAdapter$ViewHolder;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 60
    const/4 v0, 0x0

    return v0
.end method
