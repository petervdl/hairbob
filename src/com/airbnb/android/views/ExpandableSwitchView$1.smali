.class Lcom/airbnb/android/views/ExpandableSwitchView$1;
.super Ljava/lang/Object;
.source "ExpandableSwitchView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/views/ExpandableSwitchView;->setupViews(Landroid/content/res/TypedArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/views/ExpandableSwitchView;


# direct methods
.method constructor <init>(Lcom/airbnb/android/views/ExpandableSwitchView;)V
    .registers 2

    .prologue
    .line 71
    iput-object p1, p0, Lcom/airbnb/android/views/ExpandableSwitchView$1;->this$0:Lcom/airbnb/android/views/ExpandableSwitchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 75
    iget-object v0, p0, Lcom/airbnb/android/views/ExpandableSwitchView$1;->this$0:Lcom/airbnb/android/views/ExpandableSwitchView;

    # invokes: Lcom/airbnb/android/views/ExpandableSwitchView;->setViewVisibility(Z)V
    invoke-static {v0, p2}, Lcom/airbnb/android/views/ExpandableSwitchView;->access$000(Lcom/airbnb/android/views/ExpandableSwitchView;Z)V

    .line 77
    iget-object v0, p0, Lcom/airbnb/android/views/ExpandableSwitchView$1;->this$0:Lcom/airbnb/android/views/ExpandableSwitchView;

    # getter for: Lcom/airbnb/android/views/ExpandableSwitchView;->mListener:Lcom/airbnb/android/views/ExpandableSwitchView$onCheckedChangeListener;
    invoke-static {v0}, Lcom/airbnb/android/views/ExpandableSwitchView;->access$100(Lcom/airbnb/android/views/ExpandableSwitchView;)Lcom/airbnb/android/views/ExpandableSwitchView$onCheckedChangeListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 78
    iget-object v0, p0, Lcom/airbnb/android/views/ExpandableSwitchView$1;->this$0:Lcom/airbnb/android/views/ExpandableSwitchView;

    # getter for: Lcom/airbnb/android/views/ExpandableSwitchView;->mListener:Lcom/airbnb/android/views/ExpandableSwitchView$onCheckedChangeListener;
    invoke-static {v0}, Lcom/airbnb/android/views/ExpandableSwitchView;->access$100(Lcom/airbnb/android/views/ExpandableSwitchView;)Lcom/airbnb/android/views/ExpandableSwitchView$onCheckedChangeListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/airbnb/android/views/ExpandableSwitchView$onCheckedChangeListener;->onCheckedChanged(Z)V

    .line 80
    :cond_16
    return-void
.end method
