.class public Lcom/airbnb/android/analytics/GroupsAnalytics;
.super Ljava/lang/Object;
.source "GroupsAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;
    }
.end annotation


# static fields
.field public static final ANDROID:Ljava/lang/String; = "Android"

.field public static final COMMENT_VIEW:Ljava/lang/String; = "comment_page"

.field public static final COMMUNITY_HOME_VIEW:Ljava/lang/String; = "community_home"

.field public static final CONTENT_VIEW:Ljava/lang/String; = "content_page"

.field public static final EMAIL_VIEW:Ljava/lang/String; = "user_email"

.field public static final FEED_SCROLLED_ACTION:Ljava/lang/String; = "feed_scrolled"

.field public static final FOCUS_COMMENT_ACTION:Ljava/lang/String; = "comment_focused"

.field public static final FOCUS_REPLY_ACTION:Ljava/lang/String; = "reply_focused"

.field public static final GROUPS_EVENT:Ljava/lang/String; = "Groups"

.field public static final GROUPS_FTUE_VIEW:Ljava/lang/String; = "groups_ftue"

.field public static final GROUP_HOME_VIEW:Ljava/lang/String; = "group_home"

.field public static final HOSPITALITY_ORIGIN:Ljava/lang/String; = "hospitality"

.field public static final HOST_HOME_ORIGIN:Ljava/lang/String; = "host_home"

.field public static final IMPRESSIONS:Ljava/lang/String; = "impressions"

.field public static final IS_MEMBER:Ljava/lang/String; = "member"

.field public static final LEFT_NAV_ORIGIN:Ljava/lang/String; = "left_nav"

.field public static final LOGGED_OUT_REDIRECT:Ljava/lang/String; = "logged_out_redirect"

.field public static final MEETUP_RSVPS_VIEW:Ljava/lang/String; = "meetup_rsvps"

.field public static final MEMBER_ROSTER_VIEW:Ljava/lang/String; = "members"

.field public static final NEW_POST_PHOTOS_VIEW:Ljava/lang/String; = "post_photos"

.field public static final NEW_POST_VIEW:Ljava/lang/String; = "post"

.field public static final NOT_A_MEMBER:Ljava/lang/String; = "not_a_member"

.field public static final NO_ACCESS_REDIRECT:Ljava/lang/String; = "no_access_redirect"

.field public static final PHOTO_UPLOADED_ACTION:Ljava/lang/String; = "photo_uploaded"

.field public static final PHOTO_UPLOAD_FAILED_ACTION:Ljava/lang/String; = "photo_upload_failed"

.field public static final PHOTO_UPLOAD_STARTED_ACTION:Ljava/lang/String; = "photo_upload_started"

.field public static final PUSH_NOTIFICATION_ORIGIN:Ljava/lang/String; = "push_notification"

.field public static final START_TYPING_BODY_ACTION:Ljava/lang/String; = "body_start_typing"

.field public static final START_TYPING_COMMENT_ACTION:Ljava/lang/String; = "comment_start_typing"

.field public static final START_TYPING_REPLY_ACTION:Ljava/lang/String; = "reply_start_typing"

.field public static final START_TYPING_SUBJECT_ACTION:Ljava/lang/String; = "subject_start_typing"

.field public static final START_TYPING_TITLE_ACTION:Ljava/lang/String; = "title_start_typing"

.field public static final SUBMIT_COMMENT_ACTION:Ljava/lang/String; = "comment_submit"

.field public static final SUBMIT_EMAIL_ACTION:Ljava/lang/String; = "email_submit"

.field public static final SUBMIT_POST_ACTION:Ljava/lang/String; = "post_submit"

.field public static final SUBMIT_POST_HAS_PHOTO:Ljava/lang/String; = "has_photo"

.field public static final SUBMIT_POST_NO_PHOTO:Ljava/lang/String; = "no_photo"

.field public static final SUBMIT_REPLY_ACTION:Ljava/lang/String; = "reply_submit"

.field public static final TAP_ADD_PHOTO_ACTION:Ljava/lang/String; = "tap_add_photo"

.field public static final TAP_COMMENT_ACTION:Ljava/lang/String; = "tap_comment_button"

.field public static final TAP_CONTENT_CARD_ACTION:Ljava/lang/String; = "tap_content_card"

.field public static final TAP_DELETE_ACTION:Ljava/lang/String; = "tap_delete"

.field public static final TAP_EMAIL_ACTION:Ljava/lang/String; = "tap_email"

.field public static final TAP_FLAG_ACTION:Ljava/lang/String; = "tap_flag"

.field public static final TAP_FOLLOWING_TAB_ACTION:Ljava/lang/String; = "tap_following_tab"

.field public static final TAP_FOLLOW_ACTION:Ljava/lang/String; = "tap_follow"

.field public static final TAP_GROUP_ACTION:Ljava/lang/String; = "tap_group"

.field public static final TAP_JOIN_ACTION:Ljava/lang/String; = "tap_join"

.field public static final TAP_LEFT_NAV_ACTION:Ljava/lang/String; = "left_nav_tap"

.field public static final TAP_LEGAL_ACCEPT_ACTION:Ljava/lang/String; = "tap_legal_disclaimer_accept"

.field public static final TAP_LEGAL_REJECT_ACTION:Ljava/lang/String; = "tap_legal_disclaimer_reject"

.field public static final TAP_LIKE_ACTION:Ljava/lang/String; = "tap_like"

.field public static final TAP_MEETUP_JOIN_ACTION:Ljava/lang/String; = "tap_meetup_join"

.field public static final TAP_MEETUP_RSVPS_ACTION:Ljava/lang/String; = "tap_meetup_rsvps"

.field public static final TAP_MEETUP_UNJOIN_ACTION:Ljava/lang/String; = "tap_meetup_unjoin"

.field public static final TAP_MEMBERS_ACTION:Ljava/lang/String; = "tap_members"

.field public static final TAP_PHOTOS:Ljava/lang/String; = "tap_photos"

.field public static final TAP_POPULAR_TAB_ACTION:Ljava/lang/String; = "tap_popular_tab"

.field public static final TAP_PROFILE_ACTION:Ljava/lang/String; = "tap_profile"

.field public static final TAP_REARRANGE_PHOTO_ACTION:Ljava/lang/String; = "tap_rearrange_photo"

.field public static final TAP_RECENT_TAB_ACTION:Ljava/lang/String; = "tap_recent_tab"

.field public static final TAP_REMOVE_PHOTO_ACTION:Ljava/lang/String; = "tap_remove_photo"

.field public static final TAP_REPLY_ACTION:Ljava/lang/String; = "tap_reply_button"

.field public static final TAP_SELECT_PHOTO_ACTION:Ljava/lang/String; = "tap_select_photo"

.field public static final TAP_SHARE_ACTION:Ljava/lang/String; = "tap_share"

.field public static final TAP_TAKE_PHOTO_ACTION:Ljava/lang/String; = "tap_take_photo"

.field public static final TAP_UNFOLLOW_ACTION:Ljava/lang/String; = "tap_unfollow"

.field public static final TAP_UNJOIN_ACTION:Ljava/lang/String; = "tap_unjoin"

.field public static final TAP_UNLIKE_ACTION:Ljava/lang/String; = "tap_unlike"

.field public static final TAP_USER_ACTION:Ljava/lang/String; = "tap_user"

.field public static final UNFOCUS_COMMENT_ACTION:Ljava/lang/String; = "comment_unfocused"

.field public static final UNFOCUS_REPLY_ACTION:Ljava/lang/String; = "reply_unfocused"

.field public static final USER_CARD_VIEW:Ljava/lang/String; = "user_card"

.field public static final WEB_INTENT:Ljava/lang/String; = "groups_web_intent"

.field public static final WEB_INTENT_ORIGIN:Ljava/lang/String; = "web_intent"

.field public static sGroupsOrigin:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;->LEFT_NAV:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    sput-object v0, Lcom/airbnb/android/analytics/GroupsAnalytics;->sGroupsOrigin:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    return-void
.end method

.method public static getOrigin()Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;
    .registers 1

    .prologue
    .line 122
    sget-object v0, Lcom/airbnb/android/analytics/GroupsAnalytics;->sGroupsOrigin:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    return-object v0
.end method

.method private static makeStrap()Lcom/airbnb/android/utils/Strap;
    .registers 3

    .prologue
    .line 269
    new-instance v0, Lcom/airbnb/android/utils/Strap;

    invoke-direct {v0}, Lcom/airbnb/android/utils/Strap;-><init>()V

    const-string/jumbo v1, "c1"

    const-string/jumbo v2, "Groups"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "c8"

    const-string/jumbo v2, "Android"

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    const-string/jumbo v1, "c10"

    sget-object v2, Lcom/airbnb/android/analytics/GroupsAnalytics;->sGroupsOrigin:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    invoke-virtual {v2}, Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;->getOrigin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    return-object v0
.end method

.method public static setOrigin(Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;)V
    .registers 1
    .param p0, "origin"    # Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    .prologue
    .line 118
    sput-object p0, Lcom/airbnb/android/analytics/GroupsAnalytics;->sGroupsOrigin:Lcom/airbnb/android/analytics/GroupsAnalytics$GroupsOrigin;

    .line 119
    return-void
.end method

.method public static track(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "c2"    # Ljava/lang/String;
    .param p1, "c3"    # Ljava/lang/String;

    .prologue
    .line 131
    invoke-static {}, Lcom/airbnb/android/analytics/GroupsAnalytics;->makeStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    invoke-virtual {v1, v2, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    invoke-virtual {v1, v2, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 132
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "Groups"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 133
    return-void
.end method

.method public static trackClickUser(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/User;)V
    .registers 8
    .param p0, "c2"    # Ljava/lang/String;
    .param p1, "group"    # Lcom/airbnb/android/models/groups/Group;
    .param p2, "user"    # Lcom/airbnb/android/models/User;

    .prologue
    .line 229
    invoke-static {}, Lcom/airbnb/android/analytics/GroupsAnalytics;->makeStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    invoke-virtual {v1, v2, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    const-string/jumbo v3, "tap_user"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c5"

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Group;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c6"

    invoke-virtual {p2}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c7"

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Group;->isMember()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 232
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "Groups"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 233
    return-void
.end method

.method public static trackCommentDrilldown(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/Comment;)V
    .registers 7
    .param p0, "c3"    # Ljava/lang/String;
    .param p1, "group"    # Lcom/airbnb/android/models/groups/Group;
    .param p2, "comment"    # Lcom/airbnb/android/models/groups/Comment;

    .prologue
    .line 185
    invoke-static {}, Lcom/airbnb/android/analytics/GroupsAnalytics;->makeStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "comment_page"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    invoke-virtual {v1, v2, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c5"

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Group;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c6"

    invoke-virtual {p2}, Lcom/airbnb/android/models/groups/Comment;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c7"

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Group;->isMember()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 189
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "Groups"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 190
    return-void
.end method

.method public static trackCommentDrilldownReplyAction(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/Reply;)V
    .registers 7
    .param p0, "c3"    # Ljava/lang/String;
    .param p1, "group"    # Lcom/airbnb/android/models/groups/Group;
    .param p2, "reply"    # Lcom/airbnb/android/models/groups/Reply;

    .prologue
    .line 193
    invoke-static {}, Lcom/airbnb/android/analytics/GroupsAnalytics;->makeStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "comment_page"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    invoke-virtual {v1, v2, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c5"

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Group;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c6"

    invoke-virtual {p2}, Lcom/airbnb/android/models/groups/Reply;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c7"

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Group;->isMember()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 197
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "Groups"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 198
    return-void
.end method

.method public static trackCommunityHomeFeedScrolled(IZ)V
    .registers 6
    .param p0, "page"    # I
    .param p1, "memberOfAnyGroup"    # Z

    .prologue
    .line 141
    invoke-static {}, Lcom/airbnb/android/analytics/GroupsAnalytics;->makeStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "community_home"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    const-string/jumbo v3, "feed_scrolled"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c4"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c7"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 144
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "Groups"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 145
    return-void
.end method

.method public static trackCommunityHomeImpression(Z)V
    .registers 5
    .param p0, "memberOfAnyGroup"    # Z

    .prologue
    .line 136
    invoke-static {}, Lcom/airbnb/android/analytics/GroupsAnalytics;->makeStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "community_home"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    const-string/jumbo v3, "impressions"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c7"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 137
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "Groups"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 138
    return-void
.end method

.method public static trackCommunityHomeTapGroup(Lcom/airbnb/android/models/groups/Group;I)V
    .registers 6
    .param p0, "group"    # Lcom/airbnb/android/models/groups/Group;
    .param p1, "position"    # I

    .prologue
    .line 148
    invoke-static {}, Lcom/airbnb/android/analytics/GroupsAnalytics;->makeStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "community_home"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    const-string/jumbo v3, "tap_group"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c4"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c5"

    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Group;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c7"

    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Group;->isMember()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 151
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "Groups"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 152
    return-void
.end method

.method public static trackContentDrilldown(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;)V
    .registers 7
    .param p0, "c3"    # Ljava/lang/String;
    .param p1, "group"    # Lcom/airbnb/android/models/groups/Group;
    .param p2, "content"    # Lcom/airbnb/android/models/groups/BaseContent;

    .prologue
    .line 177
    invoke-static {}, Lcom/airbnb/android/analytics/GroupsAnalytics;->makeStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "content_page"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    invoke-virtual {v1, v2, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c5"

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Group;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c6"

    invoke-virtual {p2}, Lcom/airbnb/android/models/groups/BaseContent;->getTrackingId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c7"

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Group;->isMember()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 181
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "Groups"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 182
    return-void
.end method

.method public static trackFtue()V
    .registers 4

    .prologue
    .line 264
    invoke-static {}, Lcom/airbnb/android/analytics/GroupsAnalytics;->makeStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "groups_ftue"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    const-string/jumbo v3, "impressions"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 265
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "Groups"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 266
    return-void
.end method

.method public static trackGroupHome(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;)V
    .registers 6
    .param p0, "c3"    # Ljava/lang/String;
    .param p1, "group"    # Lcom/airbnb/android/models/groups/Group;

    .prologue
    .line 155
    invoke-static {}, Lcom/airbnb/android/analytics/GroupsAnalytics;->makeStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "group_home"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    invoke-virtual {v1, v2, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c5"

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Group;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c7"

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Group;->isMember()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 158
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "Groups"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 159
    return-void
.end method

.method public static trackGroupHome(Ljava/lang/String;Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;)V
    .registers 7
    .param p0, "c3"    # Ljava/lang/String;
    .param p1, "c4"    # Ljava/lang/String;
    .param p2, "group"    # Lcom/airbnb/android/models/groups/Group;

    .prologue
    .line 162
    invoke-static {}, Lcom/airbnb/android/analytics/GroupsAnalytics;->makeStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "group_home"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    invoke-virtual {v1, v2, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c4"

    invoke-virtual {v1, v2, p1}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c5"

    invoke-virtual {p2}, Lcom/airbnb/android/models/groups/Group;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c7"

    invoke-virtual {p2}, Lcom/airbnb/android/models/groups/Group;->isMember()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 165
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "Groups"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 166
    return-void
.end method

.method public static trackGroupHomeContentCard(Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/BaseContent;I)V
    .registers 7
    .param p0, "group"    # Lcom/airbnb/android/models/groups/Group;
    .param p1, "content"    # Lcom/airbnb/android/models/groups/BaseContent;
    .param p2, "position"    # I

    .prologue
    .line 169
    invoke-static {}, Lcom/airbnb/android/analytics/GroupsAnalytics;->makeStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "group_home"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    const-string/jumbo v3, "tap_content_card"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c4"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c5"

    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Group;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c6"

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/BaseContent;->getTrackingId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c7"

    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Group;->isMember()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 173
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "Groups"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 174
    return-void
.end method

.method public static trackMembers(Lcom/airbnb/android/models/groups/Group;)V
    .registers 5
    .param p0, "group"    # Lcom/airbnb/android/models/groups/Group;

    .prologue
    .line 250
    invoke-static {}, Lcom/airbnb/android/analytics/GroupsAnalytics;->makeStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "members"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    const-string/jumbo v3, "impressions"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c5"

    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Group;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c7"

    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Group;->isMember()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 253
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "Groups"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 254
    return-void
.end method

.method public static trackNavClick()V
    .registers 4

    .prologue
    .line 126
    invoke-static {}, Lcom/airbnb/android/analytics/GroupsAnalytics;->makeStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "left_nav_tap"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 127
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "Groups"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 128
    return-void
.end method

.method public static trackNewPost(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;)V
    .registers 6
    .param p0, "c3"    # Ljava/lang/String;
    .param p1, "group"    # Lcom/airbnb/android/models/groups/Group;

    .prologue
    .line 201
    invoke-static {}, Lcom/airbnb/android/analytics/GroupsAnalytics;->makeStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "post"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    invoke-virtual {v1, v2, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c5"

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Group;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c7"

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Group;->isMember()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 204
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "Groups"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 205
    return-void
.end method

.method public static trackNewPostPhotos(Ljava/lang/String;)V
    .registers 6
    .param p0, "c3"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 208
    invoke-static {}, Lcom/airbnb/android/analytics/GroupsAnalytics;->makeStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "post_photos"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    invoke-virtual {v1, v2, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c7"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 211
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "Groups"

    invoke-static {v1, v4, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 212
    return-void
.end method

.method public static trackPhotoUploadFailed(Lcom/android/volley/VolleyError;)V
    .registers 6
    .param p0, "error"    # Lcom/android/volley/VolleyError;

    .prologue
    const/4 v4, 0x1

    .line 222
    invoke-static {}, Lcom/airbnb/android/analytics/GroupsAnalytics;->makeStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "post"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    const-string/jumbo v3, "photo_upload_failed"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c4"

    iget-object v3, p0, Lcom/android/volley/VolleyError;->networkResponse:Lcom/android/volley/NetworkResponse;

    iget v3, v3, Lcom/android/volley/NetworkResponse;->statusCode:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c7"

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 225
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "Groups"

    invoke-static {v1, v4, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 226
    return-void
.end method

.method public static trackRSVPs(Lcom/airbnb/android/models/groups/Group;)V
    .registers 5
    .param p0, "group"    # Lcom/airbnb/android/models/groups/Group;

    .prologue
    .line 257
    invoke-static {}, Lcom/airbnb/android/analytics/GroupsAnalytics;->makeStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "meetup_rsvps"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    const-string/jumbo v3, "impressions"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c5"

    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Group;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c7"

    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Group;->isMember()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 260
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "Groups"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 261
    return-void
.end method

.method public static trackSubmitPost(Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/Content;)V
    .registers 6
    .param p0, "group"    # Lcom/airbnb/android/models/groups/Group;
    .param p1, "content"    # Lcom/airbnb/android/models/groups/Content;

    .prologue
    .line 215
    invoke-static {}, Lcom/airbnb/android/analytics/GroupsAnalytics;->makeStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "post"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    const-string/jumbo v3, "post_submit"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c4"

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Content;->hasPhotos()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c5"

    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Group;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c7"

    invoke-virtual {p0}, Lcom/airbnb/android/models/groups/Group;->isMember()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 218
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "Groups"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 219
    return-void
.end method

.method public static trackUserCard(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/User;)V
    .registers 8
    .param p0, "c3"    # Ljava/lang/String;
    .param p1, "group"    # Lcom/airbnb/android/models/groups/Group;
    .param p2, "user"    # Lcom/airbnb/android/models/User;

    .prologue
    .line 236
    invoke-static {}, Lcom/airbnb/android/analytics/GroupsAnalytics;->makeStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "user_card"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    invoke-virtual {v1, v2, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c5"

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Group;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c6"

    invoke-virtual {p2}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c7"

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Group;->isMember()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 239
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "Groups"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 240
    return-void
.end method

.method public static trackUserEmail(Ljava/lang/String;Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/User;)V
    .registers 8
    .param p0, "c3"    # Ljava/lang/String;
    .param p1, "group"    # Lcom/airbnb/android/models/groups/Group;
    .param p2, "user"    # Lcom/airbnb/android/models/User;

    .prologue
    .line 243
    invoke-static {}, Lcom/airbnb/android/analytics/GroupsAnalytics;->makeStrap()Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c2"

    const-string/jumbo v3, "user_email"

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c3"

    invoke-virtual {v1, v2, p0}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c5"

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Group;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c6"

    invoke-virtual {p2}, Lcom/airbnb/android/models/User;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v1

    const-string/jumbo v2, "c7"

    invoke-virtual {p1}, Lcom/airbnb/android/models/groups/Group;->isMember()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/airbnb/android/utils/Strap;->kv(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/android/utils/Strap;

    move-result-object v0

    .line 246
    .local v0, "strap":Lcom/airbnb/android/utils/Strap;
    const-string/jumbo v1, "Groups"

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Lcom/airbnb/android/services/AirEventLogger;->track(Ljava/lang/String;ZLcom/airbnb/android/utils/Strap;)V

    .line 247
    return-void
.end method
