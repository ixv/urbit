import React, { Component } from 'react';

export class SidebarInvite extends Component {
  onAccept() {
    this.props.api.invite.accept('/chat', this.props.uid);
  }

  onDecline() {
    this.props.api.invite.decline('/chat', this.props.uid);
  }

  render() {
    const { props } = this;

    return (
      <div className='w-100 bg-transparent pa4 bb b--gray4 b--gray1-d'>
        <div className='w-100 v-mid'>
          <p className="dib f8 mono gray4-d">
            {props.invite.path}
          </p>
        </div>
        <a
          className="dib pointer pa2 f9 bg-green2 white mt4"
          onClick={this.onAccept.bind(this)}
        >
          Accept Invite
        </a>
        <a
          className="dib pointer ml4 pa2 f9 bg-black bg-gray0-d white mt4"
          onClick={this.onDecline.bind(this)}
        >
          Decline
        </a>
      </div>
    );
  }
}

